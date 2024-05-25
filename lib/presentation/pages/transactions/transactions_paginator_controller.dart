import 'dart:async';

import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/domain/models/transaction.dart';
import 'package:synapserx_v2/domain/usecases/provider.dart';
import 'package:synapserx_v2/presentation/pages/hompage_subpages/myorders.dart';

class TransactionsPaginatorController extends AsyncNotifier<List<Transaction>> {
  bool _hasmore = true;
  int page = 1;
  bool get hasmore => _hasmore;
  String searchString = '';

  @override
  FutureOr<List<Transaction>> build() async {
    state = const AsyncLoading();
    final newState = await AsyncValue.guard(fetchtransactions);
    state = newState;
    return newState.value ?? [];
  }

  Future<void> fetchmore() async {
    if (state.isLoading || !_hasmore) return;
    state = const AsyncLoading();
    final newState = await AsyncValue.guard(() async {
      final newTransactions = await fetchtransactions();
      return [...?state.value, ...newTransactions];
    });
    state = newState;
  }

  Future<List<Transaction>> fetchtransactions() async {
    final retrievedString = ref.watch(searchPxProvider);
    final results = await ref
        .read(transactionsDataProvider)
        .getTransactions(page, retrievedString);
    _hasmore = ((page * 10) < results.transactionsCount);
    if (_hasmore) {
      page++;
    }
    return results.transactions;
  }

  Future<void> refresh() async {
    page = 1;
  }
}

final transactionsPaginatorControllerProvider =
    AsyncNotifierProvider<TransactionsPaginatorController, List<Transaction>>(
        TransactionsPaginatorController.new);

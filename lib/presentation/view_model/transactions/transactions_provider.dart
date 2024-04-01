import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synapserx_v2/domain/models/transaction.dart';
import 'package:synapserx_v2/domain/usecases/provider.dart';

part 'transactions_provider.g.dart';

@riverpod
class TransactionsList extends _$TransactionsList {
  //List<Transaction> transactions = [];
  Future<List<Transaction>> getTransactions() async {
    state = const AsyncLoading();
    final transactions =
        await ref.watch(transactionsDataProvider).getTransactions();
    return transactions;
  }

  @override
  FutureOr<List<Transaction>> build() async {
    return getTransactions();
  }
}

@riverpod
class Last10Transactions extends _$Last10Transactions {
  //List<Transaction> transactions = [];
  Future<List<Transaction>> getTransactions() async {
    state = const AsyncLoading();
    final transactions =
        await ref.watch(transactionsDataProvider).getLast10Transactions();
    return transactions;
  }

  @override
  FutureOr<List<Transaction>> build() async {
    return getTransactions();
  }
}

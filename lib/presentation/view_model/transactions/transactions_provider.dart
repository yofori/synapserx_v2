import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synapserx_v2/domain/models/transactionresponse.dart';
import 'package:synapserx_v2/domain/usecases/provider.dart';

part 'transactions_provider.g.dart';

@riverpod
Future<TransactionResponse> fetchTransactions(
    FetchTransactionsRef ref, int page, String searchString) {
  final transactions = ref.watch(transactionsDataProvider);
  return transactions.getTransactions(page, searchString);
}

import 'package:riverpod_annotation/riverpod_annotation.dart';
import 'package:synapserx_v2/domain/models/transaction.dart';
import 'package:synapserx_v2/presentation/pages/hompage_subpages/myorders.dart';
import 'package:synapserx_v2/presentation/view_model/transactions/transactions_provider.dart';
part 'search_patient_provider.g.dart';

@riverpod
List<Transaction> filteredTransactionList(FilteredTransactionListRef ref) {
  List<Transaction> filteredTransactions = [];
  final filter = ref.watch(searchPxProvider);
  final transactions = ref.watch(fetchTransactionsProvider(0, ''));
  transactions.whenData((value) {
    filteredTransactions = value.transactions
        .where((element) =>
            element.patientFullname.toString().toLowerCase().contains(filter))
        .toSet()
        .toList();
  });
  return filteredTransactions;
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:synapserx_v2/presentation/pages/widgets/transactiontile_widget.dart';
import 'package:synapserx_v2/presentation/view_model/transactions/transactions_provider.dart';
import 'package:synapserx_v2/providers/search_patient_provider.dart';

class TransactionsListWidget extends ConsumerWidget {
  const TransactionsListWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactions = ref.watch(fetchTransactionsProvider(0, ''));
    final filteredTransactions = ref.watch(filteredTransactionListProvider);
    final totalNumberOfTransactions = filteredTransactions.length;
    return transactions.when(
      data: (response) {
        return ListView.builder(
            itemCount: totalNumberOfTransactions,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              return TransactionTileWidget(
                title: filteredTransactions[index].patientFullname,
                subtitle: filteredTransactions[index].createdAt.toString(),
                transactionType: filteredTransactions[index].transactionType,
                transactionId: filteredTransactions[index].id.toString(),
                transactionRef: filteredTransactions[index].transactionRef,
              );
            });
      },
      error: (err, stack) => Text(err.toString()),
      loading: () => const Padding(
          padding: EdgeInsets.all(10),
          child: SpinKitThreeBounce(
            color: Colors.purple,
          )),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:synapserx_v2/presentation/pages/widgets/transactiontile_widget.dart';
import 'package:synapserx_v2/presentation/view_model/transactions/transactions_provider.dart';

class TransactionsListView extends ConsumerWidget {
  const TransactionsListView({super.key});

  static const pageSize = 25;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final responseAsync = ref.watch(fetchTransactionsProvider(1, ''));
    return responseAsync.when(
      error: (err, stack) => Text(err.toString()),
      loading: () => const CircularProgressIndicator(),
      data: (response) {
        final totalResults = responseAsync.valueOrNull?.transactionsCount;
        return (totalResults != 0)
            ? SizedBox(
                height: MediaQuery.of(context).size.height * 0.3,
                child: ListView.builder(
                    itemCount: (totalResults! > 10) ? 10 : totalResults,
                    //physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      final tx = response.transactions;
                      if (index >= response.transactions.length) {
                        return null;
                      }
                      return TransactionTileWidget(
                          title: tx[index].patientFullname,
                          subtitle:
                              '${tx[index].transactionType.toString()}: ${DateFormat('dd-MM-yyyy @ hh:mm a').format(DateTime.parse(tx[index].createdAt.toString()))}',
                          transactionType: tx[index].transactionType,
                          transactionId: tx[index].id.toString(),
                          transactionRef: tx[index].transactionRef);
                    }),
              )
            : const Text('You have no transactions yet');
      },
    );
  }
}

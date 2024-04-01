import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:synapserx_v2/presentation/view_model/transactions/transactions_provider.dart';

class Last10TxWidget extends ConsumerWidget {
  const Last10TxWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactions = ref.watch(last10TransactionsProvider);
    return transactions.when(
        data: (txlist) => RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(last10TransactionsProvider);
              },
              child: txlist.isNotEmpty
                  ? ListView(
                      shrinkWrap: true,
                      children: [
                        for (final tx in txlist)
                          ListTile(
                            title: Text(tx.patientFullname),
                            subtitle: Text(
                                '${tx.transactionType.toString()}: written on ${DateFormat('dd-MM-yyyy @ hh:mm a').format(DateTime.parse(tx.createdAt.toString()))}'),
                          )
                      ],
                    )
                  : const Center(
                      child: Text(
                        'You haven\'t written any orders or requests yet.',
                        textAlign: TextAlign.center,
                      ),
                    ),
            ),
        error: (err, stack) => Text(err.toString()),
        loading: () => const Center(
              child: CircularProgressIndicator(),
            ));
  }
}

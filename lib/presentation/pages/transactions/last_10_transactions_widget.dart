import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:synapserx_v2/domain/models/transactionresponse.dart';
import 'package:synapserx_v2/presentation/view_model/transactions/transactions_provider.dart';

class TransactionsListView extends ConsumerWidget {
  TransactionsListView({super.key});

  static const pageSize = 25;
  final _scrollController = ScrollController();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final responseAsync = ref.watch(fetchTransactionsProvider(1));
    final totalResults = responseAsync.valueOrNull?.transactionsCount;
    // return ListView.builder(
    //     itemCount: totalResults,
    //     shrinkWrap: true,
    //     physics: const NeverScrollableScrollPhysics(),
    //     itemBuilder: (context, index) {
    //       final page = index ~/ pageSize + 1;
    //       final indexInPage = index % pageSize;
    //       print(index);
    //       print(indexInPage);

    //       final AsyncValue<TransactionResponse> responseAsync =
    //           ref.watch(fetchTransactionsProvider(page));
    //       return responseAsync.when(
    //           data: (response) {
    //             if (indexInPage >= response.transactions.length) {
    //               return null;
    //             }
    //             final tx = response.transactions;
    //             return ListTile(
    //               title: Text(tx[indexInPage].patientFullname),
    //               subtitle: Text(
    //                   '${tx[indexInPage].transactionType.toString()}: written on ${DateFormat('dd-MM-yyyy @ hh:mm a').format(DateTime.parse(tx[indexInPage].createdAt.toString()))}'),
    //             );
    //           },
    //           error: (err, stack) => Text(err.toString()),
    //           loading: () => const CircularProgressIndicator());
    //     });
    return responseAsync.when(
      error: (err, stack) => Text(err.toString()),
      loading: () => const CircularProgressIndicator(),
      data: (response) {
        final totalResults = responseAsync.valueOrNull?.transactionsCount;
        return ListView.builder(
            controller: _scrollController,
            itemCount: totalResults,
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (context, index) {
              final tx = response.transactions;
              if (index >= response.transactions.length) {
                return null;
              }
              return ListTile(
                title: Text(tx[index].patientFullname),
                subtitle: Text(
                    '${tx[index].transactionType.toString()}: written on ${DateFormat('dd-MM-yyyy @ hh:mm a').format(DateTime.parse(tx[index].createdAt.toString()))}'),
              );
            });
      },
    );
  }

  void _loadmore() {
    if (_scrollController.position.pixels ==
        _scrollController.position.maxScrollExtent) {
      print('end reached');
    }
  }
}

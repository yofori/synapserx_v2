import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:synapserx_v2/presentation/pages/transactions/transactions_paginator_controller.dart';

class TransactionsWidget extends HookConsumerWidget {
  const TransactionsWidget({super.key});
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final transactionResponse =
        ref.watch(transactionsPaginatorControllerProvider);
    final transactions = transactionResponse.value ?? [];
    final isInitialLoading =
        transactionResponse.isLoading && transactions.isEmpty;

    final controller = useScrollController();
    final paginationController =
        ref.watch(transactionsPaginatorControllerProvider.notifier);
    final hasmore = paginationController.hasmore;
    final isFetchingMore =
        transactionResponse.isLoading && transactions.isNotEmpty;
    void onScroll() {
      final bool isBottom =
          controller.offset >= controller.position.maxScrollExtent &&
              !controller.position.outOfRange;
      // (controller.position.pixels == controller.position.maxScrollExtent);
      if (isBottom && hasmore && !isFetchingMore) {
        WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
          ref
              .read(transactionsPaginatorControllerProvider.notifier)
              .fetchmore();
        });
      }
    }

    useEffect(() {
      controller.addListener(onScroll);
      return () => controller.removeListener(onScroll);
    });

    return isInitialLoading
        ? const Center(child: CircularProgressIndicator())
        : ListView.separated(
            physics: const AlwaysScrollableScrollPhysics(),
            controller: controller,
            shrinkWrap: true,
            itemBuilder: (context, index) {
              if (transactions.length == index + 1) {
                if (isFetchingMore) {
                  return const Padding(
                    padding: EdgeInsets.all(10),
                    child: SpinKitThreeBounce(
                      color: Colors.purple,
                    ),
                  );
                }
              }
              final transaction = transactions[index];
              return ListTile(
                title: Text(transaction.patientFullname),
                leading: Text('${index + 1}'),
              );
            },
            separatorBuilder: (context, index) => const Divider(
                  height: 1,
                ),
            itemCount: transactions.length);
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/presentation/pages/transactions/last_10_transactions_widget.dart';
import 'package:synapserx_v2/presentation/pages/transactions/transactions_widget.dart';
import 'package:synapserx_v2/presentation/pages/widgets/offlineindicator.dart';
import 'package:synapserx_v2/presentation/view_model/transactions/transactions_provider.dart';
import 'package:synapserx_v2/providers/search_patient_provider.dart';
import '../widgets/synapsedrawerbutton.dart' as dwb;

final isSearchEnabledProvider = StateProvider<bool>((ref) => false);

final searchPxProvider = StateProvider<String>((ref) => '');

class MyOrdersPage extends ConsumerWidget {
  const MyOrdersPage({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<ScaffoldState> skey = GlobalKey();
    // final filteredTransactions = ref.watch(filteredTransactionListProvider);
    // final getAllTransactions = ref.watch(fetchTransactionsProvider);
    bool isSearchEnabled = ref.watch(isSearchEnabledProvider);
    return GestureDetector(
        child: Scaffold(
            appBar: AppBar(
                leading: dwb.DrawerButton(key: skey),
                title: !isSearchEnabled
                    ? const Text('synapseRx')
                    : TextFormField(
                        autofocus:
                            true, //Display the keyboard when TextField is displayed
                        cursorColor: Colors.white,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                        ),
                        textInputAction: TextInputAction.search,
                        onChanged: (value) {
                          ref
                              .read(searchPxProvider.notifier)
                              .update((state) => state = value);
                        },
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.all(12.0),
                          hintText: "Enter patient's name to search",
                          hintStyle: TextStyle(
                            color: Colors.white60,
                            fontSize: 16,
                            fontStyle: FontStyle.italic,
                          ),
                        )),
                actions: !isSearchEnabled
                    ? [
                        IconButton(
                            icon: const Icon(Icons.search),
                            onPressed: () {
                              ref
                                  .read(isSearchEnabledProvider.notifier)
                                  .update((state) => state = !state);
                            })
                      ]
                    : [
                        IconButton(
                            icon: const Icon(Icons.clear),
                            onPressed: () {
                              ref
                                  .read(isSearchEnabledProvider.notifier)
                                  .update((state) => state = !state);
                              ref
                                  .read(searchPxProvider.notifier)
                                  .update((state) => state = '');
                            })
                      ]),
            body: RefreshIndicator(
              onRefresh: () async {
                ref.invalidate(fetchTransactionsProvider);
              },
              // child: Column(
              //   key: key,
              //   crossAxisAlignment: CrossAxisAlignment.center,
              //   children: const <Widget>[
              //     OfflineIndicator(),
              //     TransactionsWidget()
              //   ],
              // ),
              child: const TransactionsWidget(),
            )));
  }
}

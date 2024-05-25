import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/presentation/pages/transactions/transactions_list_widget.dart';
import 'package:synapserx_v2/presentation/view_model/transactions/transactions_provider.dart';
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
                        cursorColor: Colors.black,
                        style: const TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                        ),
                        textInputAction: TextInputAction.search,
                        onChanged: (value) {
                          ref
                              .read(searchPxProvider.notifier)
                              .update((state) => state = value);
                        },
                        decoration: const InputDecoration(
                          //labelText: 'Search',
                          hintText: 'Type name to search...',
                          prefixIcon: Icon(Icons.search),
                        ),
                      ),
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
              child: const TransactionsListWidget(),
            )));
  }
}

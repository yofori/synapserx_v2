import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';
import 'package:synapserx_v2/presentation/pages/widgets/offlineindicator.dart';
import 'package:synapserx_v2/presentation/view_model/transactions/transactions_provider.dart';
import 'package:synapserx_v2/providers/search_patient_provider.dart';
import '../widgets/emptylistwidget.dart';
import '../widgets/synapsedrawerbutton.dart' as dwb;

final isSearchEnabledProvider = StateProvider<bool>((ref) => false);

final searchPxProvider = StateProvider<String>((ref) => '');

class MyOrdersPage extends ConsumerWidget {
  const MyOrdersPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    GlobalKey<ScaffoldState> skey = GlobalKey();
    final filteredTransactions = ref.watch(filteredTransactionListProvider);
    final getAllTransactions = ref.watch(transactionsListProvider);
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
                ref.invalidate(transactionsListProvider);
              },
              child: SingleChildScrollView(
                child: Column(
                  key: key,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    const OfflineIndicator(),
                    getAllTransactions.when(
                        data: (data) => data.isNotEmpty
                            ? ListView(
                                shrinkWrap: true,
                                children: [
                                  for (final tx in filteredTransactions)
                                    ListTile(
                                      title: Text(tx.patientFullname),
                                      subtitle: Text(
                                          '${tx.transactionType.toString()}: written on ${DateFormat('dd-MM-yyyy @ hh:mm a').format(DateTime.parse(tx.createdAt.toString()))}'),
                                    )
                                ],
                              )
                            : SizedBox(
                                width: MediaQuery.of(context).size.width,
                                height:
                                    MediaQuery.of(context).size.height - 200,
                                child: const EmptyListWidget(
                                  imageLocation:
                                      'assets/images/doctor_prescription.png',
                                  subtitle:
                                      'You haven\'t created any patient orders yet. Create a new prescription or laboratory request by clicking on their buttons',
                                  title: 'No Patient Orders Created',
                                )),
                        error: (error, stackTrace) => const SizedBox(
                              height: double.infinity,
                              child: Center(
                                child: Text('Something went wrong'),
                              ),
                            ),
                        loading: () => SizedBox(
                            width: MediaQuery.of(context).size.width,
                            height: MediaQuery.of(context).size.height - 200,
                            child: const Center(
                                child: CircularProgressIndicator())))
                  ],
                ),
              ),
            )));
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:synapserx_v2/domain/models/useraccounts.dart';
import 'package:synapserx_v2/presentation/pages/widgets/emptylistwidget.dart';
import 'package:synapserx_v2/presentation/view_model/user/useraccounts_provider.dart';

final _formKey = GlobalKey<FormState>();
TextEditingController institutionName = TextEditingController();
TextEditingController institutionAddress = TextEditingController();
TextEditingController institutionTelephone = TextEditingController();
TextEditingController institutionEmail = TextEditingController();
bool isEditing = false;

class UserAccountsPage extends ConsumerWidget {
  const UserAccountsPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: (const Text('User Facility Accounts'))),
      floatingActionButton: FloatingActionButton(
          tooltip: 'Add Account',
          child: const Icon(Icons.add),
          onPressed: () {
            isEditing = false;
            displayButtomSheet(context, '', ref);
          }),
      body: const SingleChildScrollView(
        child: Column(
          children: [UserAccountsListView()],
        ),
      ),
    );
  }

  Future<dynamic> displayButtomSheet(
      BuildContext context, String accountid, WidgetRef ref) {
    if (!isEditing) {
      institutionName.clear();
      institutionAddress.clear();
      institutionEmail.clear();
      institutionTelephone.clear();
    }
    return showModalBottomSheet(
        shape: const RoundedRectangleBorder(
            borderRadius: BorderRadius.vertical(top: Radius.circular(10.0))),
        isScrollControlled: true,
        context: context,
        builder: (BuildContext context) {
          return Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Form(
              key: _formKey,
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                        padding: const EdgeInsets.all(10),
                        child: const Text('Enter Health Facility Details')),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      textCapitalization: TextCapitalization.words,
                      controller: institutionName,
                      decoration: const InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(),
                          labelText: 'Health Facility Name',
                          hintText: 'Enter your Health Facility\'s Name here'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "A health facility name must be provided";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      textCapitalization: TextCapitalization.words,
                      controller: institutionAddress,
                      decoration: const InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(),
                          labelText: 'Health Facility Address',
                          hintText:
                              'Enter your Health Facility\'s Address here'),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return "A health facility address must be provided";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                        textCapitalization: TextCapitalization.words,
                        controller: institutionEmail,
                        keyboardType: TextInputType.emailAddress,
                        decoration: const InputDecoration(
                            isDense: true,
                            border: OutlineInputBorder(),
                            labelText: 'Health Facility Email',
                            hintText: 'Enter your Health Facility\'s Email'),
                        validator: (val) {
                          if ((val!.isNotEmpty) &&
                              !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                  .hasMatch(val)) {
                            return "Enter a valid email address";
                          }
                          return null;
                        }),
                    const SizedBox(
                      height: 10,
                    ),
                    TextFormField(
                      controller: institutionTelephone,
                      keyboardType: TextInputType.phone,
                      decoration: const InputDecoration(
                          isDense: true,
                          border: OutlineInputBorder(),
                          labelText: 'Health Facility Telephone No',
                          hintText:
                              'Enter your Health Facility\'s Telephone No here'),
                      validator: (val) {
                        if ((val!.isNotEmpty) &&
                            !RegExp(r"^(\d+)*$").hasMatch(val)) {
                          return "Enter a valid phone number";
                        }
                        return null;
                      },
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.redAccent),
                            onPressed: (() {
                              Navigator.pop(context);
                            }),
                            child: const Text('Cancel')),
                        const SizedBox(
                          width: 10,
                        ),
                        ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.green),
                            onPressed: (() async {
                              UserAccount userAccount = UserAccount(
                                institutionName: institutionName.text,
                                institutionAddress: institutionAddress.text,
                                institutionTelephone: institutionTelephone.text,
                                institutionEmail: institutionEmail.text,
                              );
                              await ref
                                  .read(userAccountsProvider.notifier)
                                  .addUserAccount(userAccount)
                                  .then((value) => Navigator.of(context).pop());
                            }),
                            child: const Text('Save')),
                      ],
                    )
                  ],
                ),
              ),
            ),
          );
        });
  }
}

class UserAccountsListView extends ConsumerWidget {
  const UserAccountsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final userAccounts = ref.watch(userAccountsProvider);
    return userAccounts.when(
      data: (accounts) {
        if (accounts.isNotEmpty) {
          return ListView.builder(
            shrinkWrap: true,
            itemCount: accounts.length,
            itemBuilder: (BuildContext context, int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(8, 2, 8, 2),
                child: Card(
                  child: ListTile(
                    title: Row(
                      children: [
                        Expanded(
                          child: Text(
                            '${accounts[index].institutionName} ${accounts[index].defaultAccount == true ? '(Default)' : ''}',
                            softWrap: true,
                          ),
                        ),
                        const UserAccountActionOption()
                      ],
                    ),
                    subtitle: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(accounts[index].institutionAddress.toString()),
                        Text('Email: ${accounts[index].institutionEmail}'),
                        Text('Tel: ${accounts[index].institutionTelephone}'),
                        const SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              );
            },
          );
        } else {
          return const Center(
            child: EmptyListWidget(
                title: 'No Facility Account Setup',
                subtitle: 'Press + Button to Add an Institutuion',
                imageLocation: 'assets/images/doctor_prescription.png'),
          );
        }
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

class UserAccountActionOption extends StatelessWidget {
  const UserAccountActionOption({super.key});

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton(
        itemBuilder: (BuildContext context) => <PopupMenuEntry>[
              PopupMenuItem(
                onTap: () {
                  isEditing = true;
                },
                child: const Text('Edit'),
              ),
              PopupMenuItem(
                // enabled: !snapshot
                //     .data![index].defaultAccount,
                onTap: () {
                  Future.delayed(
                    const Duration(seconds: 0),
                    () => showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: const Text('Confirm Account Removal'),
                        content: const Text(
                            'You are about to remove one of your accounts. This action cannot be undone. Please confirm the removal'),
                        actions: [
                          TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: const Text('CANCEL')),
                          TextButton(
                              onPressed: () {}, child: const Text('CONFIRM')),
                        ],
                      ),
                    ),
                  );
                },
                child: const Text('Delete'),
              ),
              PopupMenuItem(
                // enabled: !snapshot
                //     .data![index].defaultAccount,
                onTap: () {
                  // Future.delayed(
                  //     const Duration(seconds: 0),
                  //     () => makeUserAcountDefault(
                  //         snapshot.data![index].id
                  //             .toString()));
                },
                child: const Text('Set as Default'),
              ),
            ]);
  }
}

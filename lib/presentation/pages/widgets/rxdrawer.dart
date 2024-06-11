import 'dart:developer';

import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:synapserx_v2/data/repository/provider.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
import '../../../common/service.dart';
import '../../../common/sqlite_service.dart';
import '../../../main.dart';
import '../../../providers/auth_provider.dart';
import '../user/change_password.dart';
import '../user/myprofile.dart';
import '../user/useraccounts.dart';
import 'package:share_plus/share_plus.dart';
import 'loadingindicator.dart';

class RxDrawer extends ConsumerWidget {
  const RxDrawer({
    super.key,
  });

  Future<String?> getData(String key) async {
    const storage = FlutterSecureStorage();
    final String? value = await storage.read(key: key);
    return value;
  }

  String getInitials(fullname) {
    List<String> names = fullname.split(" ");
    String initials = "";
    int maxNumWords = 3;
    int numWords = 0;

    if (names.length <= maxNumWords) {
      numWords = names.length;
    } else {
      numWords = maxNumWords;
    }
    for (var i = 0; i < numWords; i++) {
      initials += names[i][0];
    }
    return initials;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(fireBaseAuthProvider);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 200,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  FutureBuilder(
                      future: ref
                          .read(settingsProvider)
                          .getUserInfoFromStorage(), //getData('fullname'),
                      builder: (context, AsyncSnapshot<UserInfo?> snapshot) {
                        if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        if (snapshot.hasData) {
                          return CircleAvatar(
                            radius: 29,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                                maxRadius: 27,
                                child: Text(
                                  getInitials(
                                      '${snapshot.data?.firstname} ${snapshot.data?.surname}'),
                                  style: const TextStyle(fontSize: 20),
                                )),
                          );
                        }
                        return const CircleAvatar(
                          radius: 29,
                          backgroundColor: Colors.white,
                          child: CircleAvatar(
                              maxRadius: 27,
                              child: Text(
                                '',
                                style: TextStyle(fontSize: 20),
                              )),
                        );
                      }),
                  const SizedBox(height: 10),
                  FutureBuilder(
                      future: ref
                          .read(settingsProvider)
                          .getUserInfoFromStorage(), //getData('fullname'),
                      builder: (context, AsyncSnapshot<UserInfo?> snapshot) {
                        if (snapshot.hasError) {
                          return Text('${snapshot.error}');
                        }
                        if (snapshot.hasData) {
                          return Column(
                            children: [
                              Text(
                                '${snapshot.data?.title} ${snapshot.data?.firstname} ${snapshot.data?.surname}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04),
                              ),
                              Text(
                                '${snapshot.data?.prescriberMDCRegNo}',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize:
                                        MediaQuery.of(context).size.width *
                                            0.04),
                              ),
                            ],
                          );
                        }
                        return const Text('');
                      }),
                ],
              ),
            ),
          ),
          ListTile(
            dense: true,
            leading: const Icon(Icons.person_add_alt),
            title: const Text('Invite Colleagues'),
            onTap: () {
              Navigator.pop(context);
              Share.share(
                  'Begin responsible prescribing at https://synapserx.com');
            },
          ),
          ListTile(
            dense: true,
            leading: const Icon(Icons.manage_accounts),
            title: const Text('Facility Accounts'),
            trailing: GlobalData.defaultAccount.isEmpty
                ? const Icon(
                    Icons.notifications_active,
                    color: Colors.red,
                  )
                : null,
            onTap: () async {
              Navigator.pop(context);
              await Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const UserAccountsPage()));
            },
          ),
          ListTile(
              dense: true,
              leading: const Icon(Icons.person),
              title: const Text('My Profile'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const ProfilePage(
                              updatingUser: true,
                            )));
              }),
          ListTile(
              dense: true,
              leading: const Icon(Icons.key),
              title: const Text('Change Password'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangePasswordPage()));
              }),
          ListTile(
              dense: true,
              leading: const Icon(Icons.security_update),
              title: const Text('Update Database'),
              onTap: () async {
                Navigator.pop(context);
                LoadingIndicatorDialog()
                    .show(context, 'Checking for Database updates ......');
                await SqliteService.db.checkForDBUpdates();
                LoadingIndicatorDialog().dismiss();
              }),
          const Divider(),
          ListTile(
            dense: true,
            leading: const Icon(Icons.logout),
            title: const Text('Sign Out'),
            onTap: () {
              showDialog(
                  context: context,
                  builder: (ctx) => AlertDialog(
                        title: const Text('Please confirm'),
                        content:
                            const Text('Do you want to signout from the app?'),
                        actions: <Widget>[
                          TextButton(
                            onPressed: () => Navigator.of(ctx).pop(false),
                            child: const Text('No'),
                          ),
                          TextButton(
                            onPressed: () {
                              auth.signOut();
                            },
                            child: const Text('Yes'),
                          ),
                        ],
                      ));
            },
          ),
          const Divider(),
          const SizedBox(height: 10),
          BarcodeWidget(
            barcode: Barcode.qrCode(), // Barcode type and settings
            data: GlobalData.prescriberid, // Content
            width: 120,
            height: 120,
          ),
          const SizedBox(height: 10),
          const Center(
            child: SizedBox(
              height: 40,
              width: 120,
              child: Text(
                'Show this QR Code to Patients to add you as their prescriber',
                style: TextStyle(fontSize: 12),
                textAlign: TextAlign.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

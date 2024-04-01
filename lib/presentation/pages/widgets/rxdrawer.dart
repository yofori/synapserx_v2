import 'package:barcode_widget/barcode_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';
import 'package:synapserx_v2/presentation/pages/widgets/snackbar.dart';
import '../../../common/service.dart';
import '../../../common/sqlite_service.dart';
import '../../../main.dart';
import '../../../providers/auth_provider.dart';
import '../../view_model/user/user_provider.dart';
import '../user/change_password.dart';
import '../user/myprofile.dart';
import '../user/useraccounts.dart';
import 'package:share_plus/share_plus.dart';
import 'loadingindicator.dart';

class RxDrawer extends ConsumerWidget {
  const RxDrawer({
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(authenticationProvider);
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          SizedBox(
            height: 160,
            child: DrawerHeader(
              decoration: const BoxDecoration(
                color: Colors.blue,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 27,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                        maxRadius: 25,
                        child: Text(
                          GlobalData.firstname[0] + GlobalData.surname[0],
                          style: const TextStyle(fontSize: 20),
                        )),
                  ),
                  const SizedBox(height: 10),
                  Text(
                    GlobalData.fullname,
                    style: const TextStyle(color: Colors.white),
                  ),
                  Text(
                    GlobalData.mdcregno,
                    style: const TextStyle(color: Colors.white),
                  ),
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
              onTap: () async {
                Navigator.pop(context);
                try {
                  LoadingIndicatorDialog()
                      .show(context, 'Retrieving your profile');
                  UserInfo? userProfile =
                      await ref.watch(userProfileProvider.notifier).fetchUser();
                  LoadingIndicatorDialog().dismiss();
                  await Navigator.push(
                      navigatorKey.currentContext!,
                      MaterialPageRoute(
                          builder: (context) => ProfilePage(
                                user: userProfile,
                              )));
                } on Exception catch (e) {
                  LoadingIndicatorDialog().dismiss();
                  if (context.mounted) {
                    CustomSnackBar.showErrorSnackBar(context, e.toString());
                  }
                }
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
                        builder: (context) => const ChangePasswordPage()));
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
                  context: navigatorKey.currentContext!,
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

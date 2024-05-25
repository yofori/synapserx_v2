import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/presentation/view_model/user/user_provider.dart';

import '../../providers/auth_provider.dart';

class HomePage extends ConsumerWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // first variable is to get the data of Authenticated User
    final data = ref.watch(fireBaseAuthProvider);

    //  Second variable to access the Logout Function
    final auth = ref.watch(authenticationProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(data.currentUser!.email ?? 'You are logged In'),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(data.currentUser!.displayName ??
                  ' Great you have Completed this step'),
            ),
            Container(
              padding: const EdgeInsets.only(top: 48.0),
              margin: const EdgeInsets.symmetric(horizontal: 16),
              width: double.infinity,
              child: MaterialButton(
                onPressed: () => auth.signOut(),
                textColor: Colors.blue.shade700,
                textTheme: ButtonTextTheme.primary,
                minWidth: 100,
                padding: const EdgeInsets.all(18),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(25),
                  side: BorderSide(color: Colors.blue.shade700),
                ),
                child: const Text(
                  'Log Out',
                  style: TextStyle(fontWeight: FontWeight.w600),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
                onPressed: () async {
                  await ref.watch(userProfileProvider.notifier).fetchUser();
                },
                child: const Text('Get Profile')),
          ],
        ),
      ),
    );
  }
}

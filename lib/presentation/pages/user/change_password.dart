import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class ChangePasswordPage extends StatelessWidget {
  ChangePasswordPage({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Change Password')),
      body: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: SingleChildScrollView(
                child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const PasswordField(),
                const ConfirmPasswordField(),
                const SizedBox(
                  height: 20,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(50),
                    ),
                    onPressed: () async => {},
                    child: const Text(
                      'SUBMIT',
                      style: TextStyle(fontSize: 18),
                    ))
              ],
            )),
          )),
    );
  }
}

class PasswordField extends ConsumerWidget {
  const PasswordField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPasswordVisible = ref.watch(passwordVisibilityProvider);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        validator: (val) {
          if ((val!.isEmpty) ||
              !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                  .hasMatch(val)) {
            return "Password does not meet the minimum requirements";
          }
          return null;
        },
        obscureText: !isPasswordVisible,
        decoration: InputDecoration(
          labelText: 'Enter New Password',
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              ref.read(passwordVisibilityProvider.notifier).state =
                  !isPasswordVisible;
            },
          ),
        ),
      ),
    );
  }
}

class ConfirmPasswordField extends ConsumerWidget {
  const ConfirmPasswordField({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isPasswordVisible = ref.watch(passwordVisibilityProvider);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        validator: (val) {
          if ((val!.isEmpty) ||
              !RegExp(r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$')
                  .hasMatch(val)) {
            return "Password does not meet the minimum requirements";
          }
          return null;
        },
        obscureText: !isPasswordVisible,
        decoration: InputDecoration(
          labelText: 'Confirm New Password',
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              isPasswordVisible ? Icons.visibility : Icons.visibility_off,
            ),
            onPressed: () {
              ref.read(passwordVisibilityProvider.notifier).state =
                  !isPasswordVisible;
            },
          ),
        ),
      ),
    );
  }
}

final passwordVisibilityProvider = StateProvider<bool>((ref) {
  return false;
});

final confirmPasswordVisibilityProvider = StateProvider<bool>((ref) {
  return false;
});

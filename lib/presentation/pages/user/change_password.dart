import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/domain/usecases/provider.dart';
import 'package:synapserx_v2/presentation/pages/widgets/loadingindicator.dart';
import 'package:synapserx_v2/presentation/pages/widgets/snackbar.dart';
import 'package:synapserx_v2/providers/auth_provider.dart';

class ChangePasswordPage extends ConsumerWidget {
  ChangePasswordPage({super.key});
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final auth = ref.watch(fireBaseAuthProvider);
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
                    onPressed: () async => {
                          if (_formKey.currentState!.validate())
                            {
                              LoadingIndicatorDialog()
                                  .show(context, 'Signing in ...'),
                              ref
                                  .read(userDataProvider)
                                  .changePassword(ref
                                      .watch(confirmPasswordProvider.notifier)
                                      .state)
                                  .catchError((e) => {
                                        LoadingIndicatorDialog().dismiss(),
                                        CustomSnackBar.showErrorSnackBar(
                                            context,
                                            message:
                                                'Cannot change password: $e'),
                                      })
                                  .then((_) => {
                                        CustomSnackBar.showSuccessSnackBar(
                                            context,
                                            message:
                                                'Your passowrd change was successful'),
                                        LoadingIndicatorDialog().dismiss(),
                                        auth.signOut(),
                                        Navigator.of(context).pop(),
                                      })
                            }
                        },
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
        onChanged: (value) {
          ref.read(passwordProvider.notifier).update((state) => state = value);
        },
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
    final isConfirmPasswordVisible =
        ref.watch(confirmPasswordVisibilityProvider);

    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: TextFormField(
        onChanged: (value) {
          ref
              .read(confirmPasswordProvider.notifier)
              .update((state) => state = value);
        },
        validator: (val) {
          final password = ref.watch(passwordProvider.notifier).state;
          if (val!.isEmpty) {
            return "A password is required";
          } else if (val != password) {
            return "Passwords do not match";
          }
          return null;
        },
        obscureText: !isConfirmPasswordVisible,
        decoration: InputDecoration(
          labelText: 'Confirm New Password',
          border: const OutlineInputBorder(),
          suffixIcon: IconButton(
            icon: Icon(
              isConfirmPasswordVisible
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
            onPressed: () {
              ref.read(confirmPasswordVisibilityProvider.notifier).state =
                  !isConfirmPasswordVisible;
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

final passwordProvider = StateProvider<String>((ref) {
  return '';
});

final confirmPasswordProvider = StateProvider<String>((ref) {
  return '';
});

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getwidget/getwidget.dart';
import 'package:package_info_plus/package_info_plus.dart';
import 'package:synapserx_v2/presentation/pages/user/forgotten_password.dart';
import 'package:synapserx_v2/presentation/pages/widgets/loadingindicator.dart';
import 'package:synapserx_v2/providers/auth_provider.dart';
import 'register.dart';

class LoginPage extends StatefulWidget {
  static const routename = '/LoginPage';
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  //  GlobalKey is used to validate the Form
  final GlobalKey<FormState> _formKey = GlobalKey();
  final _email = TextEditingController();
  final _password = TextEditingController();
  bool _showPassword = true;
  bool remembermeChecked = false;
  String? _version;
  String? _buildNumber;

  void _getAppVersion() async {
    final PackageInfo packageInfo = await PackageInfo.fromPlatform();

    final version = packageInfo.version;
    final buildNumber = packageInfo.buildNumber;

    setState(() {
      _version = version;
      _buildNumber = buildNumber;
    });
  }

  @override
  void initState() {
    super.initState();
    _getAppVersion();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.all(12),
        height: 50.0,
        //color: Colors.grey[200],
        child: Text(
          'version: $_version build: $_buildNumber',
          textAlign: TextAlign.center,
        ),
      ),
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Consumer(builder: (context, ref, _) {
          final auth = ref.watch(authenticationProvider);

          Future<void> login() async {
            if (!_formKey.currentState!.validate()) {
              return;
            }

            LoadingIndicatorDialog().show(context, 'Signing in ...');
            await auth
                .signInWithEmailAndPassword(
                    _email.text, _password.text, context)
                .whenComplete(() => auth.authStateChange.listen((event) async {
                      if (event == null) {
                        //TODO
                        return;
                      }
                    }));
            LoadingIndicatorDialog().dismiss();
          }

          Future<void> loginWithGoogle() async {
            LoadingIndicatorDialog().show(context, 'Signing in ...');
            await auth
                .signInWithGoogle(context)
                .whenComplete(() => auth.authStateChange.listen((event) async {
                      if (event == null) {
                        LoadingIndicatorDialog().dismiss();
                        return;
                      }
                    }));
            LoadingIndicatorDialog().dismiss();
          }

          Future<void> signInWithApple() async {
            LoadingIndicatorDialog().show(context, 'Signing in ...');
            await auth
                .signInWithApple()
                .whenComplete(() => auth.authStateChange.listen((event) async {
                      if (event == null) {
                        LoadingIndicatorDialog().dismiss();
                        return;
                      }
                    }));
            LoadingIndicatorDialog().dismiss();
          }

          Future<void> signInWithMicrosoft() async {
            LoadingIndicatorDialog().show(context, 'Signing in ...');
            await auth
                .signInWithMicrosoft()
                .whenComplete(() => auth.authStateChange.listen((event) async {
                      if (event == null) {
                        LoadingIndicatorDialog().dismiss();
                        return;
                      }
                    }));
            LoadingIndicatorDialog().dismiss();
          }

          return Form(
              key: _formKey,
              child: Center(
                  child: AutofillGroup(
                child: SingleChildScrollView(
                  child: Column(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(8.0),
                      child: Image.asset(
                        'assets/images/app_logo.png',
                        fit: BoxFit.contain,
                        width: 100,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    Container(
                        alignment: Alignment.center,
                        padding: const EdgeInsets.all(10),
                        child: const Text(
                          'Sign In',
                          style: TextStyle(
                              //color: Colors.blue,
                              fontWeight: FontWeight.w500,
                              fontSize: 20),
                        )),
                    Container(
                        margin: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        alignment: Alignment.center,
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.all(10),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.email],
                                controller: _email,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter your email";
                                  }
                                  return null;
                                },
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.email),
                                  border: OutlineInputBorder(),
                                  labelText: 'Email',
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(10, 10, 10, 0),
                              child: TextFormField(
                                autofillHints: const [AutofillHints.password],
                                obscureText: _showPassword,
                                controller: _password,
                                validator: (val) {
                                  if (val!.isEmpty) {
                                    return "Please enter your password";
                                  }
                                  return null;
                                },
                                decoration: InputDecoration(
                                    prefixIcon: const Icon(Icons.password),
                                    border: const OutlineInputBorder(),
                                    labelText: 'Password',
                                    hintText: 'Enter your password here',
                                    suffixIcon: GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          _showPassword = !_showPassword;
                                        });
                                      },
                                      child: Icon(
                                        _showPassword
                                            ? Icons.visibility
                                            : Icons.visibility_off,
                                        color: Colors.grey,
                                      ),
                                    )),
                              ),
                            ),
                            //const SizedBox(height: 5),
                            CheckboxListTile(
                                controlAffinity:
                                    ListTileControlAffinity.leading,
                                title: const Text('Remember Me'),
                                value: remembermeChecked,
                                onChanged: (value) {
                                  setState(() {
                                    remembermeChecked = value!;
                                  });
                                }),
                            Container(
                                height: 50,
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: ElevatedButton(
                                    onPressed: login,
                                    style: ElevatedButton.styleFrom(
                                        minimumSize: const Size.fromHeight(50),
                                        //primary: Colors.indigo,
                                        shape: RoundedRectangleBorder(
                                            borderRadius:
                                                BorderRadius.circular(10)),
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 40, vertical: 10)),
                                    child: const Text(
                                      'Login',
                                      style: TextStyle(
                                        fontSize: 20,
                                        //fontWeight: FontWeight.bold,
                                      ),
                                    ))),
                            TextButton(
                              onPressed: () {
                                //forgot password screen
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) =>
                                            const ForgotPasswordPage()));
                              },
                              child: const Text(
                                'Forgot Password?',
                              ),
                            ),
                            const Row(
                              children: [
                                Expanded(
                                    child: Divider(
                                  color: Colors.black,
                                )),
                                Text('  Or sign in with  '),
                                Expanded(
                                    child: Divider(
                                  color: Colors.black,
                                )),
                              ],
                            ),
                            const SizedBox(
                              height: 8,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                GFButton(
                                  onPressed: loginWithGoogle,
                                  text: "Google",
                                  icon: Image.asset(
                                    'assets/images/icons8-google-48.png',
                                    width: 24,
                                  ),
                                  type: GFButtonType.outline,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GFButton(
                                  onPressed: signInWithMicrosoft,
                                  text: "Microsoft",
                                  icon: Image.asset(
                                    'assets/images/icons8-microsoft-48.png',
                                    width: 24,
                                  ),
                                  type: GFButtonType.outline,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                GFButton(
                                  onPressed: signInWithApple,
                                  text: "Apple",
                                  icon: const Icon(Icons.apple),
                                  type: GFButtonType.outline,
                                ),
                              ],
                            ),
                            const SizedBox(height: 10),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                const Text('Don\'t have an account?'),
                                TextButton(
                                  child: const Text(
                                    'Create one here',
                                    style: TextStyle(fontSize: 16),
                                  ),
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                const RegisterPage()));
                                  },
                                ),
                              ],
                            ),
                          ],
                        )),
                  ]),
                ),
              )));
        }),
      ),
    );
  }
}

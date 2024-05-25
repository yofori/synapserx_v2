import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:synapserx_v2/presentation/view_model/user/user_provider.dart';
import 'package:synapserx_v2/presentation/pages/widgets/loadingindicator.dart';
import 'package:synapserx_v2/presentation/pages/widgets/snackbar.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:dropdown_button2/dropdown_button2.dart';
import 'package:country_code_picker/country_code_picker.dart';
import 'login_page.dart';
import 'package:synapserx_v2/domain/models/user.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController mdcregnoController = TextEditingController();
  bool _showPassword = true;
  bool checkboxValue = false;
  String countryCode = '+233';
  String dropdownvalue = 'Dr';
  String selectedSignInMethodText = 'Email and Password';
  Image selectedSignInMethodImage =
      Image.asset('assets/images/email_logo.png', width: 24);
  var items = [
    'Prof',
    'Dr',
    'Mr',
    'Mrs',
    'Ms',
  ];

  final List<String> signupMethods = [
    'Email and Password',
    'Google',
    'Apple',
    'Microsoft',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: (const Text('synapseRx - Create Account'))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              const SizedBox(
                height: 10,
              ),
              Form(
                key: _formKey,
                child: Column(children: [
                  Row(
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Expanded(
                        flex: 30,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          child: DropdownButtonFormField(
                            isDense: true,
                            decoration: const InputDecoration(
                                isDense: true,
                                border: OutlineInputBorder(),
                                labelText: 'Title',
                                hintText: 'Enter your title'),
                            value: dropdownvalue,
                            icon: const Icon(Icons.keyboard_arrow_down),
                            items: items.map((String items) {
                              return DropdownMenuItem(
                                  value: items, child: Text(items));
                            }).toList(),
                            onChanged: (newValue) {
                              setState(() {
                                dropdownvalue = newValue.toString();
                              });
                            },
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Expanded(
                        flex: 65,
                        child: TextFormField(
                          textCapitalization: TextCapitalization.words,
                          decoration: const InputDecoration(
                              isDense: true,
                              border: OutlineInputBorder(),
                              labelText: 'First Name',
                              hintText: 'Enter your first name'),
                          validator: (val) {
                            if ((val!.isEmpty)) {
                              return "Your first name is required for signup";
                            }
                            return null;
                          },
                          controller: firstnameController,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    textCapitalization: TextCapitalization.words,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Surname',
                        hintText: 'Enter your Surname'),
                    validator: (val) {
                      if ((val!.isEmpty)) {
                        return "Your surname is required for signup";
                      }
                      return null;
                    },
                    controller: surnameController,
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    textCapitalization: TextCapitalization.characters,
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'MDC Reg No (MDC/RN/XXXXX)',
                        hintText: 'Enter your MDC Reg No'),
                    validator: (val) {
                      if ((val!.isEmpty)) {
                        return "Enter a MDC Registration Number";
                      }
                      return null;
                    },
                    controller: mdcregnoController,
                  ),
                  const SizedBox(height: 10.0),
                  TextFormField(
                    decoration: InputDecoration(
                        prefixIcon: CountryCodePicker(
                          showDropDownButton: true,
                          favorite: const ['+233', 'GB', 'US', '+234'],
                          initialSelection: '+233',
                          onChanged: (value) => _onCountryChange(value),
                        ),
                        border: const OutlineInputBorder(),
                        labelText: 'Cell Phone Number',
                        hintText: 'Enter your cellphone number'),
                    keyboardType: TextInputType.phone,
                    validator: (val) {
                      if ((val!.isNotEmpty) &&
                          !RegExp(r'^(?:[+0])?[0-9]{10,12}$').hasMatch(val)) {
                        return "Enter a valid phone number";
                      } else if (val.isEmpty) {
                        return "An cell phone number is required for signup";
                      }
                      return null;
                    },
                    controller: telephoneController,
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 60,
                    decoration: BoxDecoration(
                        border: Border.all(width: 0.5),
                        borderRadius: BorderRadius.circular(5)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        const Text('Sign in Method: '),
                        const SizedBox(
                          width: 5,
                        ),
                        selectedSignInMethodImage,
                        Text(selectedSignInMethodText),
                        DropdownButtonHideUnderline(
                          child: DropdownButton2(
                            customButton: const Icon(
                              Icons.keyboard_arrow_down,
                              size: 36,
                              //color: Colors.red,
                            ),
                            items: [
                              ...MenuItems.firstItems.map(
                                (item) => DropdownMenuItem<MenuItem>(
                                  value: item,
                                  child: MenuItems.buildItem(item),
                                ),
                              ),
                            ],
                            onChanged: (value) {
                              MenuItems.onChanged(context, value!);
                              setState(() {
                                selectedSignInMethodText = value.text;
                                selectedSignInMethodImage = value.icon;
                              });
                            },
                            dropdownStyleData: DropdownStyleData(
                              width: 160,
                              padding: const EdgeInsets.symmetric(vertical: 6),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                //color: Colors.redAccent,
                              ),
                              offset: const Offset(0, 8),
                            ),
                            menuItemStyleData: MenuItemStyleData(
                              customHeights: [
                                ...List<double>.filled(
                                    MenuItems.firstItems.length, 48),
                              ],
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(
                    height: 10,
                  ),
                  (selectedSignInMethodText == 'Email and Password')
                      ? Column(
                          children: [
                            TextFormField(
                              decoration: const InputDecoration(
                                  border: OutlineInputBorder(),
                                  labelText: 'Email',
                                  hintText: 'Enter your email address'),
                              keyboardType: TextInputType.emailAddress,
                              validator: (val) {
                                if (selectedSignInMethodText !=
                                    'Email and Password') return null;
                                if ((val!.isNotEmpty) &&
                                    !RegExp(r"^[a-zA-Z0-9.!#$%&'*+/=?^_`{|}~-]+@[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?(?:\.[a-zA-Z0-9](?:[a-zA-Z0-9-]{0,253}[a-zA-Z0-9])?)*$")
                                        .hasMatch(val)) {
                                  return "Enter a valid email address";
                                } else if (val.isEmpty) {
                                  return "An email address is required for signup";
                                }
                                return null;
                              },
                              controller: emailController,
                            ),
                            const SizedBox(height: 10.0),
                            TextFormField(
                              obscureText: _showPassword,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "Password",
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
                              validator: (val) {
                                if (selectedSignInMethodText !=
                                    'Email and Password') return null;
                                if (val!.isEmpty) {
                                  return "Please enter your password";
                                }
                                return null;
                              },
                              controller: passwordController,
                            ),
                            const SizedBox(height: 10.0),
                            TextFormField(
                              obscureText: _showPassword,
                              decoration: InputDecoration(
                                  border: const OutlineInputBorder(),
                                  hintText: "Confirm Password",
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
                              validator: (val) {
                                if (selectedSignInMethodText !=
                                    'Email and Password') return null;
                                if (val!.isEmpty) {
                                  return "Please enter your password";
                                } else if (val != passwordController.text) {
                                  return "Passwords do not match";
                                }
                                return null;
                              },
                            ),
                          ],
                        )
                      : Container(),

                  const SizedBox(height: 10.0),
                  Row(
                    children: <Widget>[
                      Checkbox(
                          value: checkboxValue,
                          onChanged: (value) {
                            setState(() {
                              checkboxValue = value!;
                              //state.didChange(value);
                            });
                          }),
                      Expanded(
                        child: RichText(
                          textScaler: const TextScaler.linear(1.2),
                          softWrap: true,
                          maxLines: 2,
                          text: TextSpan(
                            children: [
                              const TextSpan(
                                  text: 'I agree to the ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                text: 'Terms & Conditions',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchUrl(Uri.parse(
                                        'https://synapserx.com/terms-and-conditions'));
                                  },
                                style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              const TextSpan(
                                  text: ' and the ',
                                  style: TextStyle(color: Colors.black)),
                              TextSpan(
                                text: 'Privacy Policy',
                                recognizer: TapGestureRecognizer()
                                  ..onTap = () {
                                    _launchUrl(Uri.parse(
                                        'https://synapserx.com/privacy-policy'));
                                  },
                                style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                              ),
                              const TextSpan(
                                  text: ' of synapseRx',
                                  style: TextStyle(color: Colors.black))
                            ],
                          ),
                        ),
                      )
                    ],
                  ),

                  const SizedBox(height: 10),
                  // ignore: avoid_unnecessary_containers
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        minimumSize: const Size.fromHeight(50), // NEW
                      ),
                      onPressed: checkboxValue
                          ? () {
                              if (_formKey.currentState!.validate()) {
                                registerUser();
                              }
                            }
                          : null,
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                        child: Text(
                          "Register".toUpperCase(),
                          style: const TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      )),
                  const SizedBox(height: 5.0),
                  SizedBox(
                    width: double.infinity,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Have an account?',
                          textScaler: TextScaler.linear(1.2),
                        ),
                        TextButton(
                            onPressed: () => Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                                ModalRoute.withName('/')),
                            child: const Text(
                              'Login',
                              textScaler: TextScaler.linear(1.2),
                            )),
                      ],
                    ),
                  )
                ]),
              ),
            ],
          ),
        )));
  }

  Future<bool> checkUsername(String username) async {
    bool recExist = false;
    //recExist = await _dioClient.checkIfUsernameExists(username);
    return recExist;
  }

  Future<void> _launchUrl(url) async {
    if (!await launchUrl(url, mode: LaunchMode.inAppWebView)) {
      throw Exception('Could not launch $url');
    }
  }

  Future<void> registerUser() async {
    if (_formKey.currentState!.validate()) {
      User user = User(
        email: emailController.text,
        password: passwordController.text,
        username: usernameController.text,
        prescriberMDCRegNo: mdcregnoController.text,
        firstname: firstnameController.text,
        surname: surnameController.text,
        countryCode: countryCode,
        telephoneNo: telephoneController.text,
        title: dropdownvalue,
        role: 'Basic',
        id: '',
      );
      try {
        LoadingIndicatorDialog().show(context, 'Registering user ....');
        await ref
            .watch(userProfileProvider.notifier)
            .registerUser(user)
            .then((value) => {
                  LoadingIndicatorDialog().dismiss(),
                  showDialog(
                    context: context,
                    builder: (ctx) => AlertDialog(
                      title: const Text(
                        'User Account Created',
                        textAlign: TextAlign.center,
                      ),
                      content: Text(
                          'A user account for ${user.firstname} ${user.surname} has been created. Instructions on how to verify your account has been sent to the email address and via SMS number provided.'),
                      actions: [
                        TextButton(
                            onPressed: () {
                              Navigator.of(ctx).pop();
                              Navigator.pushAndRemoveUntil(
                                  context,
                                  MaterialPageRoute(
                                      builder: (ctx) => const LoginPage()),
                                  ModalRoute.withName('/'));
                            },
                            child: const Text("OK"))
                      ],
                    ),
                  )
                });
      } catch (e) {
        LoadingIndicatorDialog().dismiss();
        if (context.mounted) {
          CustomSnackBar.showErrorSnackBar(context, 'Error: ${e.toString()}');
        }
      }
      LoadingIndicatorDialog().dismiss();
    }
  }

  void _onCountryChange(CountryCode countryCode) {
    countryCode = countryCode;
  }
}

class MenuItem {
  MenuItem({
    required this.text,
    required this.icon,
  });

  final String text;
  final Image icon;
}

abstract class MenuItems {
  static List<MenuItem> firstItems = [
    emailandPassword,
    google,
    microsoft,
    apple,
  ];

  static final emailandPassword = MenuItem(
      text: 'Email and Password',
      icon: Image.asset(
        'assets/images/email_logo.png',
        width: 24,
      ));
  static final google = MenuItem(
      text: 'Google',
      icon: Image.asset(
        'assets/images/icons8-google-48.png',
        width: 24,
      ));
  static final microsoft = MenuItem(
      text: 'Microsoft',
      icon: Image.asset(
        'assets/images/icons8-microsoft-48.png',
        width: 24,
      ));
  static final apple = MenuItem(
      text: 'Apple',
      icon: Image.asset(
        'assets/images/apple_logo_black.png',
        width: 20,
      ));

  static Widget buildItem(MenuItem item) {
    return Row(
      children: [
        item.icon,
        const SizedBox(
          width: 10,
        ),
        Expanded(
          child: Text(
            item.text,
            style: const TextStyle(
                //color: Colors.white,
                ),
          ),
        ),
      ],
    );
  }

  static void onChanged(BuildContext context, MenuItem item) {
    _RegisterPageState().selectedSignInMethodText = item.text;
  }
}

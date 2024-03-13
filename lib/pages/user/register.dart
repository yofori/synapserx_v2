import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import '../../models/user.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:country_code_picker/country_code_picker.dart';

import '../../widgets/loadingindicator.dart';
import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({Key? key}) : super(key: key);

  @override
  // ignore: library_private_types_in_public_api
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController surnameController = TextEditingController();
  TextEditingController firstnameController = TextEditingController();
  TextEditingController telephoneController = TextEditingController();
  TextEditingController usernameController = TextEditingController();
  TextEditingController mdcregnoController = TextEditingController();
  //final DioClient _dioClient = DioClient();
  bool _showPassword = true;
  bool checkboxValue = false;
  String countryCode = '+233';
  String dropdownvalue = 'Dr';
  var items = [
    'Prof',
    'Dr',
    'Mr',
    'Mrs',
    'Ms',
  ];

  Future<void> registerUser() async {
    final navigator = Navigator.of(context);
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
      //

      LoadingIndicatorDialog().show(context, 'Registering user ....');
      // dynamic res = await _dioClient.createUser(user: user);
      // scaffoldMessengerKey.currentState!.hideCurrentSnackBar();

      // if (res['ErrorCode'] == null) {
      //   LoadingIndicatorDialog().dismiss();
      //   scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
      //     content: const Text(
      //         'User successfully created. Check your email or sms for instructions to activate your account'),
      //     backgroundColor: Colors.green.shade300,
      //   ));
      //   navigator.push(MaterialPageRoute<void>(builder: (BuildContext context) {
      //     return const LoginPage();
      //   }));
      // } else {
      //   LoadingIndicatorDialog().dismiss();
      //   scaffoldMessengerKey.currentState!.showSnackBar(SnackBar(
      //     content: Text('${res['message']}'),
      //     backgroundColor: Colors.red,
      //   ));
      // }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: (const Text('synapseRx - Create Account'))),
        body: SingleChildScrollView(
            child: Padding(
          padding: const EdgeInsets.all(10.0),
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
                  // const SizedBox(height: 10.0),
                  // TextFormField(
                  //   decoration: const InputDecoration(
                  //       border: OutlineInputBorder(),
                  //       labelText: 'Username',
                  //       hintText: 'Enter your username'),
                  //   obscureText: false,
                  //   validator: (val) {
                  //     if (val!.isEmpty) {
                  //       return 'A username is required';
                  //     } else if (val.contains(' ')) {
                  //       return 'Username cannot contains spaces';
                  //     }

                  //     return null;
                  //   },
                  //   controller: usernameController,
                  // ),
                  const SizedBox(
                    height: 10,
                  ),

                  TextFormField(
                    decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Enter your email address'),
                    keyboardType: TextInputType.emailAddress,
                    validator: (val) {
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
                      if (val!.isEmpty) {
                        return "Please enter your password";
                      } else if (val != passwordController.text) {
                        return "Passwords do not match";
                      }
                      return null;
                    },
                  ),
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
                          textScaleFactor: 1.2,
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
                          textScaleFactor: 1.2,
                        ),
                        TextButton(
                            onPressed: () => Navigator.pushAndRemoveUntil(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const LoginPage()),
                                ModalRoute.withName('/')),
                            child: const Text(
                              'Login',
                              textScaleFactor: 1.2,
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

  void _onCountryChange(CountryCode countryCode) {
    countryCode = countryCode;
  }
}

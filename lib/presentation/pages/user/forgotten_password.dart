import 'package:flutter/material.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
// ignore: library_private_types_in_public_api
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController emailController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (const Text('synapseRx - Reset Password'))),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 30,
              ),
              Image.asset('assets/images/forgotten_password.png'),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Forgot your Password?",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                padding: EdgeInsets.all(10),
                child: Text(
                  "Enter your email or MDC Reg No below to\nrecieve password reset instructions",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(40, 25, 40, 25),
                child: TextFormField(
                  controller: emailController,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'email or MDC Reg No',
                    hintText: "enter your email or MDC Reg No",
                  ),
                  keyboardType: TextInputType.text,
                  validator: (val) {
                    // ignore: prefer_is_not_empty
                    if ((val!.isEmpty)) {
                      return "an email address or a MDC Reg No is required";
                    }
                    return null;
                  },
                  focusNode: FocusNode(),
                  textInputAction: TextInputAction.done,
                ),
              ),
              ElevatedButton(
                  child: Padding(
                      padding: const EdgeInsets.fromLTRB(40, 10, 40, 10),
                      child: Text(
                        "Reset Password".toUpperCase(),
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      )),
                  onPressed: () async {
                    if (_formKey.currentState!.validate()) {
                      // await _dioClient
                      //     .resetPasswordRequest(emailController.text);
                    }
                  }),
            ],
          ),
        ),
      ),
    );
  }
}

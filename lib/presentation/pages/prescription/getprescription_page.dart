import 'package:flutter/material.dart';

class GetPrescriptionPage extends StatefulWidget {
  const GetPrescriptionPage({
    super.key,
  });

  @override
  UserAccountPageState createState() => UserAccountPageState();
}

class UserAccountPageState extends State<GetPrescriptionPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (const Text('User Facility Account'))),
    );
  }
}

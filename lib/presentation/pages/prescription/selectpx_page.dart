import 'package:flutter/material.dart';

class SelectPatientPage extends StatefulWidget {
  const SelectPatientPage({
    super.key,
  });

  @override
  UserAccountPageState createState() => UserAccountPageState();
}

class UserAccountPageState extends State<SelectPatientPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (const Text('User Facility Account'))),
    );
  }
}

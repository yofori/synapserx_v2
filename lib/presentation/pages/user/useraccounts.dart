import 'package:flutter/material.dart';

class UserAccountsPage extends StatefulWidget {
  const UserAccountsPage({
    Key? key,
  }) : super(key: key);

  @override
  UserAccountPageState createState() => UserAccountPageState();
}

class UserAccountPageState extends State<UserAccountsPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (const Text('User Facility Account'))),
    );
  }
}

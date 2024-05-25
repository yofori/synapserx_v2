import 'package:flutter/material.dart';

class CreateAdhocPxPage extends StatefulWidget {
  const CreateAdhocPxPage({
    super.key,
  });

  @override
  CreateAdhocPxPageState createState() => CreateAdhocPxPageState();
}

class CreateAdhocPxPageState extends State<CreateAdhocPxPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (const Text('User Facility Account'))),
    );
  }
}

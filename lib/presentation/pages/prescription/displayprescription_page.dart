import 'package:flutter/material.dart';

class DisplayPrescriptionPage extends StatefulWidget {
  const DisplayPrescriptionPage({
    super.key,
  });

  @override
  DisplayPrescriptionState createState() => DisplayPrescriptionState();
}

class DisplayPrescriptionState extends State<DisplayPrescriptionPage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (const Text('User Facility Account'))),
    );
  }
}

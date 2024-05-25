import 'package:flutter/material.dart';

class PatientsPage extends StatefulWidget {
  const PatientsPage({
    super.key,
  });

  @override
  PatientsPageState createState() => PatientsPageState();
}

class PatientsPageState extends State<PatientsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (const Text('User Facility Account'))),
    );
  }
}

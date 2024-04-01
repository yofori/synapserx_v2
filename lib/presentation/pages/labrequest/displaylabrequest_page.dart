import 'package:flutter/material.dart';

class DisplayLabRequestPage extends StatefulWidget {
  const DisplayLabRequestPage({
    Key? key,
  }) : super(key: key);

  @override
  DisplayLabRequestPageState createState() => DisplayLabRequestPageState();
}

class DisplayLabRequestPageState extends State<DisplayLabRequestPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (const Text('User Facility Account'))),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:synapserx_v2/domain/models/user_info.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({
    Key? key,
    required this.user,
  }) : super(key: key);
  final UserInfo user;

  @override
  ProfilePageState createState() => ProfilePageState();
}

class ProfilePageState extends State<ProfilePage> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: (const Text('Update my profile'))),
    );
  }
}

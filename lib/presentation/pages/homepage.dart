import 'dart:async';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:upgrader/upgrader.dart';
import '../../common/sqlite_service.dart';
import 'hompage_subpages/dashboard.dart';
import 'hompage_subpages/myorders.dart';
import 'hompage_subpages/mypatients.dart';
import 'hompage_subpages/medicineslist.dart';

class HomePage extends ConsumerStatefulWidget {
  const HomePage({Key? key, required this.showIndex}) : super(key: key);
  final int showIndex;

  @override
  ConsumerState<HomePage> createState() => _HomePageState();
}

class _HomePageState extends ConsumerState<HomePage> {
  int _selectedIndex = 0;
  //String firebaseToken = '';
  //late FirebaseMessaging messaging;
  //bool isoffline = false;

  @override
  void initState() {
    SqliteService.db.initDB();
    _selectedIndex = widget.showIndex;
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  final List _screens = [
    {"screen": const HomeDashboardPage()},
    {"screen": const PatientsPage()},
    {"screen": const MyOrdersPage()},
    {"screen": const MedicinesListPage()},
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(
    BuildContext context,
  ) {
    return WillPopScope(
      onWillPop: () => _onWillPop(context),
      child: Scaffold(
        body: UpgradeAlert(
            upgrader:
                Upgrader(durationUntilAlertAgain: const Duration(days: 2)),
            child:
                IndexedStack(children: [_screens[_selectedIndex]['screen']])),
        bottomNavigationBar: BottomNavigationBar(
          iconSize: MediaQuery.of(context).size.width * 0.07,
          selectedFontSize: MediaQuery.of(context).size.width * 0.04,
          unselectedFontSize: MediaQuery.of(context).size.width * 0.03,
          type: BottomNavigationBarType.fixed,
          items: <BottomNavigationBarItem>[
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.people,
              ),
              label: 'My Patients',
            ),
            BottomNavigationBarItem(
              icon: Icon(
                MdiIcons.clipboardListOutline,
              ),
              label: 'My Orders',
            ),
            const BottomNavigationBarItem(
              icon: Icon(
                Icons.medical_services,
              ),
              label: 'Medicines',
            )
          ],
          currentIndex: _selectedIndex,
          selectedItemColor: const Color.fromARGB(255, 65, 116, 209),
          onTap: _onItemTapped,
        ),
      ),
    );
  }

  AlertDialog _buildExitDialog(BuildContext context) {
    return AlertDialog(
      title: const Text('Please confirm'),
      content: const Text('Do you want to exit the app?'),
      actions: <Widget>[
        TextButton(
          onPressed: () => Navigator.of(context).pop(false),
          child: const Text('No'),
        ),
        TextButton(
          onPressed: () {
            Navigator.of(context).pop(true);
          },
          child: const Text('Yes'),
        ),
      ],
    );
  }

  Future<bool> _onWillPop(BuildContext context) async {
    bool? exitResult = await showDialog(
      context: context,
      builder: (context) => _buildExitDialog(context),
    );
    if (exitResult!) {
      Platform.isIOS //iOS will not allow for programmatically exit the app so go to login page
          ? {true}
          : SystemNavigator.pop();
      return true;
    } else {
      return false;
    }
  }
}

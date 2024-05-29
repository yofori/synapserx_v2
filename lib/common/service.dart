import 'dart:developer';

import 'package:path_provider/path_provider.dart';

class GlobalData {
  static String accessToken = '';
  static String refreshToken = '';
  static String username = '';
  static String password = '';
  static String fullname = '';
  static String surname = '';
  static String firstname = '';
  static String mdcregno = '';
  static String prescriberid = '';
  static List useraccounts = [];
  static String signature = '';
  static String defaultAccount = '';
  static double currentDBVersion = 1.00;
  static String baseUrl = 'http://10.0.2.2:3000';
  //static String baseUrl = 'http://192.168.1.78:3000';
  //static String baseUrl = 'https://api.synapserx.com';
  //static String baseUrl = 'https://apitest.synapserx.com';
  static String temporaryDirectory = '';
  static bool isOnline = false;
  static DateTime loginTimeStamp = DateTime.now();
  static bool _isDefaultAccountSet = defaultAccount.isNotEmpty;
  bool get isDefaultAccountSet => _isDefaultAccountSet;

  void setDefaultAccount(String accountID) {
    log('setting default account');
    defaultAccount = accountID;
    _isDefaultAccountSet = defaultAccount.isNotEmpty;
  }

  void getAppTemporaryDirectory() async {
    await getTemporaryDirectory().then((dir) {
      temporaryDirectory = dir.path;
    });
  }
}

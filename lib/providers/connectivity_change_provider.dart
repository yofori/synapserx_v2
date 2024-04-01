import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:fluttertoast/fluttertoast.dart';

final streamProvider = StreamProvider<bool>((ref) {
  return Connectivity()
      .onConnectivityChanged
      .map((event) => ConnectivityUtility.checkConnectivity(event));
});

class ConnectivityUtility {
  static checkConnectivity(ConnectivityResult result) {
    switch (result) {
      case ConnectivityResult.mobile || ConnectivityResult.wifi:
        return isSynapseRxReachable();
      case ConnectivityResult.bluetooth:
      case ConnectivityResult.none:
      default:
        return false;
    }
  }
}

Future<bool> isSynapseRxReachable() async {
  final result = await InternetAddress.lookup('api.synapserx.com');
  if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
    await Fluttertoast.showToast(
        toastLength: Toast.LENGTH_SHORT,
        msg: 'connected to synapseRx',
        backgroundColor: Colors.green);
    return true;
  } else {
    await Fluttertoast.showToast(
        toastLength: Toast.LENGTH_SHORT,
        msg: 'Disconnected, only cached data will be shown',
        backgroundColor: Colors.red);
    return false;
  }
}

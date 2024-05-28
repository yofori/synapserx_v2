import 'package:flutter/material.dart';

class CustomSnackBar {
  static showSuccessSnackBar(BuildContext context,
      {required String message,
      int milliseconds = 3000,
      SnackBarBehavior snackBarBehavior = SnackBarBehavior.fixed}) {
    return ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.green,
        //margin: const EdgeInsets.only(bottom: 100.0),
        behavior: snackBarBehavior,
        action: SnackBarAction(
            textColor: Colors.white,
            label: 'DISMISS',
            onPressed: () => _dismissCurrentSnackBar(context)),
        duration: Duration(milliseconds: milliseconds),
        content: SelectableText(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  static void showErrorSnackBar(BuildContext context,
      {required String message,
      int milliseconds = 5000,
      SnackBarBehavior snackBarBehavior = SnackBarBehavior.fixed}) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        backgroundColor: Colors.red,
        behavior: snackBarBehavior,
        duration: Duration(milliseconds: milliseconds),
        content: SelectableText(
          message,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }

  static void _dismissCurrentSnackBar(BuildContext context) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
  }
}

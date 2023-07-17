import 'package:another_flushbar/flushbar.dart';
import 'package:flutter/material.dart';
import 'package:infotrendz/shared/theme.dart';

void showCustomAlertDialog(BuildContext context, String message) {
  showDialog<String>(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: const Text('Hapus Semua'),
          content: const Text('Yakin ingin Hapus Semua?'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        );
      });
}

void showCustomSnackBar(
  BuildContext context,
  String message,
) {
  Flushbar(
    message: message,
    flushbarPosition: FlushbarPosition.TOP,
    backgroundColor: orangeColor,
    duration: const Duration(seconds: 2),
  ).show(context);
}

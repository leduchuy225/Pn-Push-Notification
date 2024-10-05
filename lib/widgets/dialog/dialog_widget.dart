import 'package:flutter/material.dart';
import 'package:get/get.dart';

enum SnackbarType {
  ERROR(textColor: Colors.white, backgroundColor: Colors.red),
  SUCCESS(textColor: Colors.white, backgroundColor: Colors.green),
  WARNING(textColor: Colors.white, backgroundColor: Colors.yellow),
  INFORMATION(textColor: Colors.white, backgroundColor: Colors.blue);

  final Color textColor;
  final Color backgroundColor;

  const SnackbarType({
    required this.textColor,
    required this.backgroundColor,
  });
}

class MyDialog {
  MyDialog._();

  static void snackbar(
    String? message, {
    Widget? icon,
    String title = 'Notification',
    SnackbarType type = SnackbarType.INFORMATION,
  }) {
    if ((message ?? '').isEmpty) {
      return;
    }
    Get.showSnackbar(
      GetSnackBar(
        icon: icon,
        title: title,
        message: message,
        duration: const Duration(seconds: 3),
        backgroundColor: type.backgroundColor,
      ),
    );
  }

  static void alertDialog(String message) {
    Get.dialog(
      AlertDialog(
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text('OK'),
          ),
          TextButton(
            onPressed: () {
              if (Get.isDialogOpen == true) {
                Get.back();
              }
            },
            child: const Text('Cancel'),
          )
        ],
      ),
    );
  }
}

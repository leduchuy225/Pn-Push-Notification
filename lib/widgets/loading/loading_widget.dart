import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyLoading extends StatelessWidget {
  static void show() {
    if (Get.isDialogOpen == true) {
      return;
    }
    Get.dialog(
      MyLoading(),
      barrierDismissible: true,
      barrierColor: Colors.green.shade50.withOpacity(0.5),
    );
  }

  static void hide() {
    if (Get.isDialogOpen == false) {
      return;
    }
    Get.back();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      backgroundColor: Colors.transparent,
      child: Container(
        width: 100,
        height: 120,
        alignment: AlignmentDirectional.center,
        decoration: BoxDecoration(
          color: Colors.blue[200],
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 16),
            SizedBox(
                width: 40.0, height: 40.0, child: CircularProgressIndicator()),
            SizedBox(height: 20),
            Text('Loading.. Wait...'),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DialogScreen extends StatelessWidget {
  const DialogScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Dialog')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // Get.defaultDialog();
                Get.defaultDialog(
                  title: 'Dialog Title',
                  titleStyle: const TextStyle(fontSize: 25.0),
                  middleText: 'This is the body',
                  middleTextStyle: const TextStyle(fontSize: 20.0),
                  // backgroundColor: Theme.of(context).primaryColor.withOpacity(0.3),
                  radius: 80.0,

                  /// to customize the middle text
                  content: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      CircularProgressIndicator(),
                      SizedBox(width: 16.0),
                      Text('Data Loading'),
                    ],
                  ),
                  textCancel: 'Cancel',
                  cancelTextColor: Colors.redAccent,
                  textConfirm: 'Confirm',
                  confirmTextColor: Colors.black54,
                  onCancel: () {},
                  onConfirm: () {},
                  buttonColor: Colors.greenAccent,
                  /*cancel: const Text(
                    'Cancels',
                    style: TextStyle(color: Colors.pinkAccent),
                  ),
                  confirm: const Text(
                    'Confirms',
                    style: TextStyle(color: Colors.lightGreen),
                  ),*/
                  actions: [
                    ElevatedButton(
                      onPressed: () {
                        Get.back();
                      },
                      child: const Text('Action-1'),
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('Action-2'),
                    ),
                  ],
                  barrierDismissible: false,
                );
              },
              child: const Text('Show Dialog'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BottomSheetScreen extends StatelessWidget {
  static String bottomSheetRoute = '/bottom_sheet_screen';

  const BottomSheetScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bottom Sheet')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.bottomSheet(
                  Container(
                    child: Wrap(
                      children: [
                        /// light
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_rounded),
                          title: const Text('Light Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.light());
                          },
                        ),

                        /// dark
                        ListTile(
                          leading: const Icon(Icons.wb_sunny_rounded),
                          title: const Text('Dark Theme'),
                          onTap: () {
                            Get.changeTheme(ThemeData.dark());
                          },
                        ),
                      ],
                    ),
                  ),
                  // barrierColor: Colors.greenAccent.shade100,
                  backgroundColor:
                      Theme.of(context).primaryColor.withOpacity(0.3),
                  // isDismissible: false,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    /*side: const BorderSide(
                      color: Colors.white,
                      style: BorderStyle.solid,
                      width: 2.0,
                    ),*/
                  ),
                  enableDrag: false,
                );
              },
              child: const Text('Bottom Sheet'),
            ),
            if (Get.parameters['channel'] != null &&
                Get.parameters['content'] != null)
              Text(
                'Channel name is: ${Get.parameters['channel']} and content is: ${Get.parameters['content']}',
                style: const TextStyle(color: Colors.redAccent, fontSize: 30.0),
              ),
            if (Get.parameters['someValue'] != null)
              Text(
                Get.parameters['someValue']!,
                style: const TextStyle(color: Colors.green, fontSize: 30.0),
              ),
          ],
        ),
      ),
    );
  }
}

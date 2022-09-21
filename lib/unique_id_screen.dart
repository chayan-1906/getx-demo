import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/custom_getx_controller.dart';

class UniqueIDScreen extends StatefulWidget {
  static String uniqueIDRoute = '/unique_id_screen';

  const UniqueIDScreen({Key? key}) : super(key: key);

  @override
  State<UniqueIDScreen> createState() => _UniqueIDScreenState();
}

class _UniqueIDScreenState extends State<UniqueIDScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unique ID Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GetBuilder<CustomGetXController>(
                id: 'txtCount',
                init: CustomGetXController(),
                builder: (CustomGetXController controller) {
                  return Text(
                    'The value is: ${controller.count}',
                    style: const TextStyle(fontSize: 25.0),
                  );
                }),
            GetBuilder<CustomGetXController>(
                init: CustomGetXController(),
                builder: (CustomGetXController controller) {
                  return Text(
                    'The value is: ${controller.count}',
                    style: const TextStyle(fontSize: 25.0),
                  );
                }),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () =>
                  Get.find<CustomGetXController>().incrementUniqueID(),
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}

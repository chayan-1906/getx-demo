import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/custom_getx_controller.dart';

class StateManagementScreen extends StatefulWidget {
  static String stateManagementRoute = '/state_management_screen';

  const StateManagementScreen({Key? key}) : super(key: key);

  @override
  State<StateManagementScreen> createState() => _StateManagementScreenState();
}

class _StateManagementScreenState extends State<StateManagementScreen> {
  var count = 0.obs;

  void increment() {
    count++;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('State Management')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /*Obx(
              () => Text(
                'Count value is  $count',
                style: const TextStyle(fontSize: 25.0),
              ),
            ),*/
            GetX<CustomGetXController>(
              init: CustomGetXController(),
              builder: (controller) {
                return Text(
                  'The value is ${controller.count}',
                  style: const TextStyle(fontSize: 25.0),
                );
              },
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              // onPressed: increment,
              onPressed: () {
                Get.find<CustomGetXController>().increment();
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}

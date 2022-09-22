import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/utils/custom_getx_controller.dart';

class WorkersScreen extends StatefulWidget {
  static String workersRoute = '/workers_screen';

  const WorkersScreen({Key? key}) : super(key: key);

  @override
  State<WorkersScreen> createState() => _WorkersScreenState();
}

class _WorkersScreenState extends State<WorkersScreen> {
  CustomGetXController customGetXController = Get.put(CustomGetXController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Workers Screen')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
              onPressed: () =>
                  customGetXController.incrementWorkers(),
              child: const Text('Increment'),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                onChanged: (value) {
                  customGetXController.incrementWorkers();
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

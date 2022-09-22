import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'utils/service.dart';

class GetXServiceScreen extends StatefulWidget {
  static var getxServiceRoute = '/getx_service_screen';

  const GetXServiceScreen({Key? key}) : super(key: key);

  @override
  State<GetXServiceScreen> createState() => _GetXServiceScreenState();
}

class _GetXServiceScreenState extends State<GetXServiceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Service Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Get.find<Service>().incrementCounter();
              },
              child: const Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/custom_getx_controller.dart';

class InternationalizationScreen extends StatefulWidget {
  static String internationalizationRoute = '/internationalization_screen';

  const InternationalizationScreen({Key? key}) : super(key: key);

  @override
  State<InternationalizationScreen> createState() =>
      _InternationalizationScreenState();
}

class _InternationalizationScreenState
    extends State<InternationalizationScreen> {
  CustomGetXController customGetXController = Get.put(CustomGetXController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Internationalization')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'hello'.tr,
              style: const TextStyle(fontSize: 25.0, color: Colors.purple),
            ),
            const SizedBox(height: 20.0),

            /// hindi
            ElevatedButton(
              onPressed: () {
                customGetXController.changeLanguage(
                  languageCode: 'hi',
                  countryCode: 'IN',
                );
              },
              child: const Text('Hindi', style: TextStyle(fontSize: 25.0)),
            ),
            const SizedBox(height: 16.0),

            /// french
            ElevatedButton(
              onPressed: () {
                customGetXController.changeLanguage(
                  languageCode: 'fr',
                  countryCode: 'FR',
                );
              },
              child: const Text('French', style: TextStyle(fontSize: 25.0)),
            ),
            const SizedBox(height: 16.0),

            /// english
            ElevatedButton(
              onPressed: () {
                customGetXController.changeLanguage(
                  languageCode: 'en',
                  countryCode: 'US',
                );
              },
              child: const Text('English', style: TextStyle(fontSize: 25.0)),
            ),
          ],
        ),
      ),
    );
  }
}

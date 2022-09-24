import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

class StorageEmailValidationScreen extends StatefulWidget {
  static var storageEmailValidationRoute = '/storage_email_validation_screen';

  const StorageEmailValidationScreen({Key? key}) : super(key: key);

  @override
  State<StorageEmailValidationScreen> createState() =>
      _StorageEmailValidationScreenState();
}

class _StorageEmailValidationScreenState
    extends State<StorageEmailValidationScreen> {
  TextEditingController emailEditingController = TextEditingController();
  TextEditingController phoneEditingController = TextEditingController();
  var storage = GetStorage();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Get Storage & Email Validation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// email textfield
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: emailEditingController,
                decoration: const InputDecoration(hintText: 'Email Address'),
              ),
            ),
            const SizedBox(height: 8.0),

            /// email validity check
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (GetUtils.isEmail(emailEditingController.text)) {
                    storage.write('email', emailEditingController.text);
                  } else {
                    Get.snackbar(
                      'Incorrect Email',
                      'Provide Email in valid format',
                      backgroundColor: Colors.redAccent,
                      snackPosition: SnackPosition.BOTTOM,
                    );
                  }
                },
                child: const Text('Write Email'),
              ),
            ),

            /// read email
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  print('The email is ${storage.read('email')}');
                },
                child: const Text('Read Email'),
              ),
            ),

            /// phone textfield
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: TextField(
                controller: phoneEditingController,
                decoration: const InputDecoration(hintText: 'Phone Number'),
                keyboardType: TextInputType.number,
              ),
            ),
            const SizedBox(height: 8.0),

            /// phone validity check
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  if (GetUtils.isPhoneNumber(phoneEditingController.text)) {
                    storage.write('phone', phoneEditingController.text);
                  } else {
                    Get.snackbar(
                      'Incorrect Phone number',
                      'Provide valid phone number',
                      backgroundColor: Colors.pinkAccent,
                      snackPosition: SnackPosition.TOP,
                    );
                  }
                },
                child: const Text('Write Phone number'),
              ),
            ),

            /// read phone
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: ElevatedButton(
                onPressed: () {
                  print('The phone number is ${storage.read('phone')}');
                },
                child: const Text('Read Phone'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

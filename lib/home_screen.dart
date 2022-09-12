import 'package:flutter/material.dart';
import 'package:getx_demo/snackbar_screen.dart';

import 'dialog_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('GetX Demo')),
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: Theme.of(context).primaryColor.withOpacity(0.2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            /// snackbar
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const SnackBarScreen()),
                );
              },
              child: const Text('SnackBar Screen'),
            ),
            const SizedBox(height: 10.0),

            /// dialog
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const DialogScreen()),
                );
              },
              child: const Text('Dialog Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

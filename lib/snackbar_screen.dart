import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SnackBarScreen extends StatelessWidget {
  const SnackBarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Snackbar')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (Get.arguments != null) Text(Get.arguments),

            /// show snackbar
            ElevatedButton(
              onPressed: () {
                Get.snackbar(
                  'Snackbar Title', 'This will be snackbar message',
                  snackPosition: SnackPosition.BOTTOM,
                  titleText: const Text(
                    'Another Title',
                    style: TextStyle(
                      color: Colors.redAccent,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  messageText: const Text(
                    'Another message',
                    style: TextStyle(color: Colors.black38),
                  ),
                  // colorText: Colors.purpleAccent,
                  backgroundColor: Colors.amberAccent,
                  borderRadius: 30.0,
                  margin: const EdgeInsets.all(10.0),
                  // maxWidth: 100.0,
                  animationDuration: const Duration(milliseconds: 3000),
                  backgroundGradient: const LinearGradient(
                    colors: [Colors.yellowAccent, Colors.greenAccent],
                  ),
                  borderColor: Colors.deepOrangeAccent,
                  borderWidth: 3.0,
                  /*boxShadows: [
                      const BoxShadow(
                        color: Colors.yellow,
                        offset: Offset(30, 50),
                        spreadRadius: 20.0,
                        blurRadius: 8.0,
                      ),
                    ],*/
                  /*isDismissible: true,
                    dismissDirection: DismissDirection.horizontal,*/
                  forwardAnimationCurve: Curves.bounceInOut,
                  duration: const Duration(milliseconds: 8000),
                  icon: const Icon(
                    Icons.send_rounded,
                    color: Colors.pinkAccent,
                  ),
                  shouldIconPulse: false,
                  // leftBarIndicatorColor: Colors.redAccent,
                  mainButton: TextButton(
                    onPressed: () {
                      print('Retry clicked');
                    },
                    style: TextButton.styleFrom(
                      backgroundColor: Colors.pink,
                      textStyle: const TextStyle(color: Colors.white),
                    ),
                    child: const Text('Retry'),
                  ),
                  onTap: (value) {
                    print('Snackbar clicked');
                  },
                  overlayBlur: 2,
                  // overlayColor: Colors.grey.shade200,
                  padding: const EdgeInsets.all(50.0),
                  showProgressIndicator: true,
                  progressIndicatorBackgroundColor: Colors.black,
                  progressIndicatorValueColor:
                      const AlwaysStoppedAnimation<Color>(Colors.white),
                  reverseAnimationCurve: Curves.bounceInOut,
                  snackbarStatus: (value) {
                    print(value);
                  },
                  /*userInputForm: Form(
                    child: Row(
                      children: const [
                        Expanded(child: TextField()),
                      ],
                    ),
                  ),*/
                );
              },
              child: const Text('Show Snackbar'),
            ),

            /// go back
            ElevatedButton(
              onPressed: () {
                Get.back(result: 'This is from Snackbar Screen');
              },
              child: const Text('Go Back'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/snackbar_screen.dart';
import 'package:getx_demo/state_management_screen.dart';
import 'package:getx_demo/student_screen.dart';
import 'package:getx_demo/unique_id_screen.dart';
import 'package:getx_demo/unknown_route_screen.dart';
import 'package:getx_demo/workers_screen.dart';

import 'bottom_sheet_screen.dart';
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
              onPressed: () async {
                Get.to(
                  const SnackBarScreen(),
                  fullscreenDialog: true,
                  transition: Transition.zoom,
                  // duration: const Duration(milliseconds: 4000),
                  curve: Curves.bounceInOut,
                  arguments: 'Data from home screen',
                );
                var data = await Get.to(() => const SnackBarScreen());
                print('The received data: $data');
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
            const SizedBox(height: 10.0),

            /// bottom sheet
            ElevatedButton(
              onPressed: () {
                // Get.toNamed(BottomSheetScreen.bottomSheetRoute);
                /// push replacement
                // Get.offNamed(BottomSheetScreen.bottomSheetRoute);

                /// push replacement for all screens
                // Get.offAllNamed(BottomSheetScreen.bottomSheetRoute);

                /// to pass value to next screen via argument
                // Get.toNamed("${BottomSheetScreen.bottomSheetRoute}?channel=Padmanabha Das&content=Flutter GetX");
                Get.toNamed('${BottomSheetScreen.bottomSheetRoute}/1234');
              },
              child: const Text('Bottom Sheet Screen'),
            ),
            const SizedBox(height: 10.0),

            /// unknown route
            ElevatedButton(
              onPressed: () {
                Get.toNamed(UnknownRouteScreen.unknownRouteRoute);
              },
              child: const Text('Unknown Route Screen'),
            ),
            const SizedBox(height: 10.0),

            /// state management screen
            ElevatedButton(
              onPressed: () {
                /*Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) {
                    return const StateManagementScreen();
                  }),
                );*/
                Get.toNamed(StateManagementScreen.stateManagementRoute);
              },
              child: const Text('State Management Screen'),
            ),
            const SizedBox(height: 10.0),

            /// student screen
            ElevatedButton(
              onPressed: () {
                Get.toNamed(StudentScreen.studentRoute);
              },
              child: const Text('Student Screen'),
            ),
            const SizedBox(height: 10.0),

            /// unique id screen
            ElevatedButton(
              onPressed: () {
                Get.toNamed(UniqueIDScreen.uniqueIDRoute);
              },
              child: const Text('Unique ID Screen'),
            ),
            const SizedBox(height: 10.0),

            /// workers screen
            ElevatedButton(
              onPressed: () {
                Get.toNamed(WorkersScreen.workersRoute);
              },
              child: const Text('Workers Screen'),
            ),
            const SizedBox(height: 10.0),
          ],
        ),
      ),
    );
  }
}

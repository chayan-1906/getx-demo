import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/bottom_sheet_screen.dart';
import 'package:getx_demo/home_screen.dart';
import 'package:getx_demo/snackbar_screen.dart';
import 'package:getx_demo/state_management_screen.dart';
import 'package:getx_demo/student_screen.dart';

import 'unknown_route_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.amber,
        appBarTheme: const AppBarTheme(elevation: 0.0, centerTitle: true),
      ),
      initialRoute: '/',
      defaultTransition: Transition.zoom,
      getPages: [
        GetPage(name: '/', page: () => const HomeScreen()),
        GetPage(
          name: '${BottomSheetScreen.bottomSheetRoute}/:someValue',
          // name: BottomSheetScreen.bottomSheetRoute,
          page: () => const BottomSheetScreen(),
          transition: Transition.leftToRight,
        ),
        /*GetPage(
          name: UnknownRouteScreen.unknownRouteRoute,
          page: () => const UnknownRouteScreen(),
          transition: Transition.circularReveal,
          transitionDuration: const Duration(milliseconds: 400),
        ),*/
        GetPage(
          name: StateManagementScreen.stateManagementRoute,
          page: () => const StateManagementScreen(),
          transition: Transition.fadeIn,
        ),
        GetPage(
          name: StudentScreen.studentRoute,
          page: () => const StudentScreen(),
          transition: Transition.cupertinoDialog,
        ),
      ],

      /// TODO: Unknown Routes not working
      unknownRoute: GetPage(
        name: UnknownRouteScreen.unknownRouteRoute,
        page: () => const UnknownRouteScreen(),
        transition: Transition.circularReveal,
        transitionDuration: const Duration(milliseconds: 400),
      ),
      // home: const HomeScreen(),
    );
  }
}

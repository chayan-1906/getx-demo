import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:getx_demo/bottom_sheet_screen.dart';
import 'package:getx_demo/home_screen.dart';
import 'package:getx_demo/internationalization_screen.dart';
import 'package:getx_demo/state_management_screen.dart';
import 'package:getx_demo/storage_email_validation_screen.dart';
import 'package:getx_demo/student_screen.dart';
import 'package:getx_demo/unique_id_screen.dart';
import 'package:getx_demo/workers_screen.dart';
import 'utils/service.dart';
import 'getx_service_screen.dart';
import 'unknown_route_screen.dart';
import 'utils/messages.dart';

Future<void> main() async {
  await initServices();
  await GetStorage.init();
  runApp(const MyApp());
}

Future<void> initServices() async {
  print('Init Services...');
  await Get.putAsync<Service>(() async => await Service());
  print('All Services started');
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'GetX Demo',
      debugShowCheckedModeBanner: false,
      translations: Messages(),
      locale: const Locale('en', 'US'),
      fallbackLocale: const Locale('en', 'US'),
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
        GetPage(
          name: UniqueIDScreen.uniqueIDRoute,
          page: () => const UniqueIDScreen(),
          transition: Transition.native,
        ),
        GetPage(
          name: WorkersScreen.workersRoute,
          page: () => const WorkersScreen(),
          transition: Transition.downToUp,
        ),
        GetPage(
          name: InternationalizationScreen.internationalizationRoute,
          page: () => const InternationalizationScreen(),
          transition: Transition.fade,
        ),
        GetPage(
          name: GetXServiceScreen.getxServiceRoute,
          page: () => const GetXServiceScreen(),
          transition: Transition.rightToLeft,
        ),
        GetPage(
          name: StorageEmailValidationScreen.storageEmailValidationRoute,
          page: () => const StorageEmailValidationScreen(),
          transition: Transition.rightToLeft,
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

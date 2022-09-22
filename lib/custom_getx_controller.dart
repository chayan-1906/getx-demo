import 'dart:ui';

import 'package:get/get.dart';
import 'package:getx_demo/student.dart';

class CustomGetXController extends GetxController {
  // var student = Student();

  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }
  var student = Student(name: 'PDas', age: 22).obs;
  var count = 0;
  var countWorkers = 0.obs;

  void convertToUpperCase() {
    student.update((std) {
      std?.name = std.name.toString().toUpperCase();
    });
  }

  void increment() {
    count++;
    update();
  }

  void incrementUniqueID() {
    count++;
    update(['txtCount']);
  }

  void incrementWorkers() {
    countWorkers++;
  }

  @override
  void onInit() {
    // TODO: implement onInit

    /// called whenever the value of countWorkers variable changes
    // ever(countWorkers, (callback) => print(countWorkers));

    /// called whenever the value of any variable from list changes
    // everAll([countWorkers], (callback) => print(countWorkers));

    /// called only once when the variable value changes
    // once(countWorkers, (callback) => print(countWorkers));

    /// called whenever the user stops typing for 1 second
    /*debounce(
      countWorkers,
      (callback) =>
          print('When the user stop typing for 1 sec the value of count'),
      time: const Duration(seconds: 1),
    );*/

    ///
    interval(
      countWorkers,
      (callback) => print('Ignore all changes'),
      time: const Duration(seconds: 3),
    );
    super.onInit();
  }

  void changeLanguage({
    required String languageCode,
    required String countryCode,
  }) {
    var locale = Locale(languageCode, countryCode);
    Get.updateLocale(locale);
  }
}

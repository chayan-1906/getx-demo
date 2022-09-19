import 'package:get/get.dart';
import 'package:getx_demo/student.dart';

class CustomGetXController extends GetxController {
  // var student = Student();

  // void convertToUpperCase() {
  //   student.name.value = student.name.value.toUpperCase();
  // }
  var student = Student(name: 'PDas', age: 22).obs;
  var count = 0;

  void convertToUpperCase() {
    student.update((std) {
      std?.name = std.name.toString().toUpperCase();
    });
  }

  void increment() {
    count++;
    update();
  }
}

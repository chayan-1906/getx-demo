import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'student.dart';

class StudentScreen extends StatefulWidget {
  static String studentRoute = '/student_screen';

  const StudentScreen({Key? key}) : super(key: key);

  @override
  State<StudentScreen> createState() => _StudentScreenState();
}

class _StudentScreenState extends State<StudentScreen> {
  var student = Student(name: 'Padmanabha', age: 22).obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Student')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                // 'Name is ${student.name.value}',
                'Name is ${student.value.name}',
                style: const TextStyle(fontSize: 25.0),
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // student.name.value = student.name.value.toUpperCase();
                student.update((std) {
                  std?.name = std.name.toString().toUpperCase();
                });
              },
              child: const Text('Upper'),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_demo/home_screen.dart';

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
      home: const HomeScreen(),
    );
  }
}

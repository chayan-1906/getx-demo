import 'package:flutter/material.dart';

class UnknownRouteScreen extends StatefulWidget {
  static String unknownRouteRoute = '/notfound';

  const UnknownRouteScreen({Key? key}) : super(key: key);

  @override
  State<UnknownRouteScreen> createState() => _UnknownRouteScreenState();
}

class _UnknownRouteScreenState extends State<UnknownRouteScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Unknown Route')),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        alignment: Alignment.center,
        color: Colors.red.shade100,
        child: const Text(
          'Unknown Route',
          style: TextStyle(
            color: Colors.redAccent,
            fontSize: 40.0,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}

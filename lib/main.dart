import 'package:flutter/material.dart';
import 'package:calculator_app/screen_one.dart';
void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

   @override
  Widget build(BuildContext context) {
    return MaterialApp(
     debugShowCheckedModeBanner: false,
      home: screen_one(),
    );
  }
}

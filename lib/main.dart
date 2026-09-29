import 'package:flutter/material.dart';
import 'package:quizmaster/screens/homescreen.dart';
import 'package:quizmaster/screens/splashscreen.dart';
import 'package:quizmaster/screens/test.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:splashscreen(),
    );
  }
}

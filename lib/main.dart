import 'package:flutter/material.dart';
import 'package:interview/view/home.dart';
import 'package:interview/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Interview Task',
      home: LoginScreen()
    );
  }
}


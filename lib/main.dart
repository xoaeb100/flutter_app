import 'package:flutter/material.dart';
import 'package:the_basics/screens/home_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var days = 30;
    return MaterialApp(
        home: HomeScreen());
  }
}

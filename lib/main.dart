import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_basics/screens/home_screen.dart';
import 'package:the_basics/screens/login_form.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomeScreen(),
      themeMode: ThemeMode.system,
      theme: ThemeData(
          primarySwatch: Colors.amber,
          fontFamily: GoogleFonts.lato().fontFamily),
      initialRoute: '/',

      routes: {
        '/': (context) => LoginScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}

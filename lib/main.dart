import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:the_basics/screens/home_screen.dart';
import 'package:the_basics/screens/login_form.dart';
import 'package:the_basics/utils/routes.dart';

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
          fontFamily: GoogleFonts.lato().fontFamily,
          appBarTheme: AppBarTheme(
              color: Colors.amber,
              elevation: 0.0,
              iconTheme: IconThemeData(color: Colors.black),
              toolbarTextStyle: Theme.of(context).textTheme.bodyText2,
              titleTextStyle: Theme.of(context).textTheme.headline6)),
      initialRoute: MyRoutes.homeRoute,
      debugShowCheckedModeBanner: false,

      routes: {
        MyRoutes.homeRoute: (context) => HomeScreen(),
        MyRoutes.loginRoute: (context) => LoginScreen(),
      },
    );
  }
}

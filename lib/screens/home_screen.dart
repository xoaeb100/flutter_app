import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});
  var days = 30;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('F1 race schedules')),
      body: Center(
          child: Container(
        child: Text('Welcome Riderr🎉'),
      )),
      drawer: Drawer(),
    );
  }
}

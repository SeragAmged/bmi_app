// ignore_for_file: use_key_in_widget_constructors, prefer_const_literals_to_create_immutables, prefer_const_constructors, unused_import
import 'package:flutter/material.dart';
import 'modules/bmi/bmi_screen.dart';

void main() {
  var app = MyApp();
  runApp(app);
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: BmiScreen(),
      debugShowCheckedModeBanner: false,
      
    );
  }
}

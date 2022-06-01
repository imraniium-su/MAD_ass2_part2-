import 'package:flutter/material.dart';
import 'package:neew/MainScreen/main_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Smart Home',
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      home: MainScreen(),
    );
  }
}
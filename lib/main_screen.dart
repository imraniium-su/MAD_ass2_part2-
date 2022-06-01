import 'package:flutter/material.dart';
import 'package:neew/constants.dart';
import 'package:neew/MainScreen/body.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBgColor,
      body: MainScreenBody(),
    );
  }
}
// ignore_for_file: unnecessary_new

import 'package:flutter/material.dart';
import 'package:healtlife/core/const/my_colors.dart';
import 'package:healtlife/core/const/my_textstyle.dart';
import 'package:healtlife/pages/firs_page.dart';
import 'package:healtlife/pages/second_page.dart';
import 'package:healtlife/pages/third_page.dart';
import 'package:healtlife/widgets/main_button.dart';
import 'dart:math' as math;

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: FirstPage());
    //home: SecondPage());
    // home: ThirdPage());
  }
}

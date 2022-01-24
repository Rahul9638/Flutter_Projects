import 'dart:async';
import 'package:flutter/material.dart';
import './widget/login_widget.dart';
import './widget/splash_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}

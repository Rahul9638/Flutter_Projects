import 'dart:io' show Platform;

import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'screen/login_widget.dart';
import 'screen/splash_screen.dart';
import './screen/otp_screen_default.dart';
import './screen/information_scree.dart';

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
    return Platform.isAndroid
        ? MaterialApp(
            title: 'Flutter Demo',
            home: SplashScreen(),
            routes: {
              OtpScreen.routeName: (ctx) => OtpScreen(),
              InformationScreen.routeName: (ctx) => InformationScreen(),
            },
          )
        : CupertinoApp(
            home: SplashScreen(),
            routes: {
              OtpScreen.routeName: (ctx) => OtpScreen(),
              InformationScreen.routeName: (ctx) => InformationScreen(),
            },
          );
  }
}

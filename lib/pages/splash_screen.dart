import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flight_booking_ui/route.dart' as route;

import '../utils/colors_utils.dart';
import '../utils/images_utils.dart';

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  startTime() async {
    var _duration = new Duration(seconds: 5);
    Timer(_duration, getNavigationPage);
  }

  getNavigationPage() {
    Navigator.pushReplacementNamed(context, route.homePage);
  }

  @override
  void initState() {
    super.initState();
    SystemChrome.setEnabledSystemUIOverlays([]);
    startTime();
  }

  @override
  void dispose() {
    super.dispose();
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);
  }

  @override
  Widget build(BuildContext context) {
    Widget imageAppLogo() => Image.asset(
      appIcon,
      height: 150.0,
      width: 150.0,
    );

    return Scaffold(
      backgroundColor: backgroundColor,
      body: SafeArea(
          child: Center(
            child: imageAppLogo(),
          ),
      ),
    );
  }
}

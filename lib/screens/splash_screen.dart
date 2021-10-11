import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../config/palette.dart';
import '../models/size.dart';
import 'authentication_screen.dart';

class SplashScreen extends StatefulWidget {
  // ignore: constant_identifier_names
  static const String route_name = "splash_screen";

  const SplashScreen({Key? key}) : super(key: key);

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 2), () {
      Get.toNamed(AuthenticationScreen.route_name);
    });
  }

  @override
  Widget build(BuildContext context) {
    Size _size = Size(context);
    return Scaffold(
      body: Container(
        color: MyPalette.primary_color,
        height: double.infinity,
        width: _size.screenWidth(),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Text(
                "foomly".toUpperCase(),
                style: MyPalette.white_text_style.copyWith(
                  fontSize: 28,
                ),
              ),
              Text(
                "Your Kitchen is our",
                style: MyPalette.white_text_style.copyWith(
                  fontSize: 15,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

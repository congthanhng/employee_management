import 'dart:async';

import 'package:employee_management/sceens/splash/splash_login.dart';
import 'package:employee_management/themes/color_app.dart';
import 'package:employee_management/themes/image_app.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Tạo một đợi 5 giây trước khi chuyển trang tự động
    Timer(Duration(milliseconds: 2500), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (context) => SplashLoginPage(), // Trang mới sau khi chuyển
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(ImageApp.logo),
          SizedBox(height: 150),
          LinearPercentIndicator(
            animation: true,
            animationDuration: 1500,
            lineHeight: 6,
            percent: 1,
            progressColor: AppColor.primaryColor,
          ),
        ],
      ),
    );
  }
}

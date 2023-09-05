import 'package:employee_management/components/button_component.dart';
import 'package:employee_management/themes/color_app.dart';
import 'package:employee_management/themes/image_app.dart';
import 'package:flutter/material.dart';

class SplashLoginPage extends StatelessWidget {
  const SplashLoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(ImageApp.logo),
            ButtonCompo(
              ontap: () {},
              text: 'Sign In',
              color: AppColor.primaryColor,
              colorText: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            ButtonCompo(
                ontap: () {},
                text: 'Sign Up',
                color: Colors.white,
                colorText: AppColor.primaryColor),
          ],
        ),
      ),
    );
  }
}

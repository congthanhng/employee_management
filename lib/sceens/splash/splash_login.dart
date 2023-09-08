import 'package:employee_management/components/button_component.dart';
import 'package:employee_management/sceens/log/login_page.dart';
import 'package:employee_management/sceens/log/register.dart';
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
              ontap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (context) =>
                        LoginPage(), // Trang mới sau khi chuyển
                  ),
                );
              },
              text: 'Sign In',
              color: AppColor.primaryColor,
              colorText: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            ButtonCompo(
                ontap: () {
                  Navigator.of(context).pushReplacement(
                    MaterialPageRoute(
                      builder: (context) =>
                          RegisterPage(), // Trang mới sau khi chuyển
                    ),
                  );
                },
                text: 'Sign Up',
                color: Colors.white,
                colorText: AppColor.primaryColor),
          ],
        ),
      ),
    );
  }
}

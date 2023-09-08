import 'package:employee_management/sceens/log/login_page.dart';
import 'package:employee_management/sceens/log/register.dart';
import 'package:flutter/material.dart';

class RegisterOrLogin extends StatefulWidget {
  const RegisterOrLogin({Key? key}) : super(key: key);

  @override
  State<RegisterOrLogin> createState() => _RegisterOrLoginState();
}

class _RegisterOrLoginState extends State<RegisterOrLogin> {
  bool showLogin = true; // Đặt giá trị mặc định là true

  void toggle() {
    setState(() {
      showLogin = !showLogin; // Thay đổi giá trị của showLogin
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showLogin) {
      return LoginPage(
        ontap: toggle,
      );
    } else {
      return RegisterPage(
        ontap: toggle,
      );
    }
  }
}

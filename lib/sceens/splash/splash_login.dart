import 'package:employee_management/components/button_component.dart';
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
            Image.asset('assets/images/logo.png'),
            ButtonCompo(
              ontap: () {},
              text: 'Sign In',
              color: Color(0xFF73AB6B),
              colorText: Colors.white,
            ),
            SizedBox(
              height: 10,
            ),
            ButtonCompo(
                ontap: () {},
                text: 'Sign Up',
                color: Colors.white,
                colorText: Color(0xFF73AB6B)),
          ],
        ),
      ),
    );
  }
}

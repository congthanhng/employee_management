import 'package:employee_management/components/button_component.dart';
import 'package:employee_management/components/textfield_component.dart';
import 'package:employee_management/themes/color_app.dart';
import 'package:employee_management/themes/image_app.dart';
import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  Function()? ontap;
  RegisterPage({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    TextEditingController nameController = TextEditingController();
    TextEditingController emailController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  'Sing Up for Better Experience',
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 24,
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                TextfieldComponent(
                    keyboardType: TextInputType.text,
                    prefixIcon: Icons.person,
                    controller: nameController,
                    labelText: 'Employee Name',
                    obscureText: false),
                const SizedBox(
                  height: 20,
                ),
                TextfieldComponent(
                    keyboardType: TextInputType.emailAddress,
                    prefixIcon: Icons.email,
                    controller: emailController,
                    labelText: 'Email',
                    obscureText: false),
                const SizedBox(
                  height: 20,
                ),
                TextfieldComponent(
                    prefixIcon: Icons.lock,
                    keyboardType: TextInputType.text,
                    controller: passwordController,
                    labelText: 'Password ',
                    starLable: '*',
                    obscureText: true),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  children: [
                    const Text(
                      'Already have an account?',
                      style: TextStyle(color: Colors.black54),
                    ),
                    TextButton(onPressed: ontap, child: Text('Sign In'))
                  ],
                ),
                ButtonCompo(
                    ontap: () {},
                    text: 'Sign up',
                    color: AppColor.primaryColor,
                    colorText: Colors.white),
                SizedBox(
                  height: 20,
                ),
                ButtonCompo(
                    ontap: () {},
                    imagePath: ImageApp.logoGoogle,
                    text: 'Continue with Google',
                    color: Colors.white,
                    colorText: Colors.black)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

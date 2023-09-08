import 'package:employee_management/components/button_component.dart';
import 'package:employee_management/components/textfield_component.dart';
import 'package:employee_management/themes/color_app.dart';
import 'package:employee_management/themes/image_app.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  Function()? ontap;
  LoginPage({super.key, this.ontap});

  @override
  Widget build(BuildContext context) {
    double screenHeight = MediaQuery.of(context).size.height;
    TextEditingController _email = TextEditingController();
    TextEditingController _password = TextEditingController();
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Container(
          height: screenHeight,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child:
                Column(mainAxisAlignment: MainAxisAlignment.center, children: [
              const Text(
                'Welcome Back!',
                style: TextStyle(fontSize: 24),
              ),
              Image.asset(ImageApp.imageLogin),
              SizedBox(
                height: 20,
              ),
              TextfieldComponent(
                  keyboardType: TextInputType.emailAddress,
                  controller: _email,
                  labelText: 'Email',
                  obscureText: false),
              SizedBox(
                height: 20,
              ),
              TextfieldComponent(
                  controller: _password,
                  labelText: 'Password',
                  obscureText: true),
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Forgot Password?',
                  style: TextStyle(fontSize: 15, color: AppColor.primaryColor),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              ButtonCompo(
                  ontap: () {},
                  text: 'Sign In',
                  color: AppColor.primaryColor,
                  colorText: Colors.white),
              Row(
                children: [
                  Text(
                    "Don't have an account?",
                    style: TextStyle(color: Colors.black45),
                  ),
                  TextButton(
                      onPressed: ontap,
                      child: Text(
                        'Sign Up',
                        style: TextStyle(color: AppColor.primaryColor),
                      )),
                ],
              ),
              ButtonCompo(
                  ontap: () {},
                  imagePath: ImageApp.logoGoogle,
                  text: 'Continute With Google',
                  color: Colors.white,
                  colorText: Colors.black)
            ]),
          ),
        ),
      ),
    );
  }
}

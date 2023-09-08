import 'package:employee_management/components/button_component.dart';
import 'package:employee_management/components/textfield_component.dart';
import 'package:employee_management/themes/color_app.dart';
import 'package:employee_management/themes/icon_app.dart';
import 'package:employee_management/themes/image_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UpdateProfilePage extends StatelessWidget {
  const UpdateProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    final designationController = TextEditingController();
    final departmentController = TextEditingController();
    final teamNameController = TextEditingController();
    final supervisedController = TextEditingController();
    final phoneController = TextEditingController();
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(ImageApp.imgUpdate),
                SizedBox(
                  height: 30,
                ),
                Text(
                  'Update profile',
                  style: TextStyle(fontSize: 26),
                ),
                SizedBox(
                  height: 30,
                ),
                TextfieldComponent(
                    controller: designationController,
                    labelText: 'Designation',
                    obscureText: false),
                SizedBox(
                  height: 10,
                ),
                TextfieldComponent(
                    controller: departmentController,
                    labelText: 'Department',
                    obscureText: false),
                SizedBox(
                  height: 10,
                ),
                TextfieldComponent(
                    controller: teamNameController,
                    labelText: 'Team Name',
                    obscureText: false),
                SizedBox(
                  height: 10,
                ),
                TextfieldComponent(
                    controller: supervisedController,
                    labelText: 'Supervidsed By',
                    obscureText: false),
                SizedBox(
                  height: 10,
                ),
                TextfieldComponent(
                    keyboardType: TextInputType.phone,
                    controller: phoneController,
                    labelText: 'Phone Number',
                    obscureText: false),
                SizedBox(
                  height: 10,
                ),
                ButtonCompo(
                    ontap: () {},
                    text: 'Update',
                    color: AppColor.primaryColor,
                    colorText: Colors.white)
              ],
            ),
          ),
        ),
      ),
    );
  }
}

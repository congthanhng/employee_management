import 'package:employee_management/components/circle_avt_component.dart';
import 'package:employee_management/themes/color_app.dart';
import 'package:employee_management/themes/icon_app.dart';
import 'package:employee_management/themes/image_app.dart';
import 'package:flutter/material.dart';

class ChoosePage extends StatelessWidget {
  const ChoosePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
              flex: 5,
              child: Container(
                color: AppColor.colorChoose,
                child: Image.asset(ImageApp.imgChoose),
              )),
          Expanded(
              flex: 2,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  AvatarComponent(
                    imagePath: IconApp.iconUserOutline,
                    backgroundColor: AppColor.primaryColor,
                    text: 'Employee',
                  ),
                  AvatarComponent(
                      text: 'Supervisor',
                      imagePath: IconApp.iconUserFill,
                      backgroundColor: AppColor.primaryColor),
                ],
              )),
          Expanded(
              flex: 3,
              child: Image.asset(
                ImageApp.logo,
                width: 300,
              ))
        ],
      ),
    );
  }
}

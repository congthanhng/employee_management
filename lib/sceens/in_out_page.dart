import 'package:employee_management/common/drawer_common.dart';
import 'package:employee_management/themes/color_app.dart';
import 'package:employee_management/themes/icon_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class InOutPage extends StatelessWidget {
  const InOutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColor.primaryColor,
      ),
      endDrawer: DrawerComon(),
      body: Column(
        children: [
          SizedBox(
            height: 10,
          ),
          const Text(
            'Hi Kabir Ahmed!',
            style: TextStyle(fontSize: 28),
          ),
          SizedBox(
            height: 50,
          ),
          const Text(
            '09:55 AM',
            style: TextStyle(fontSize: 44, fontWeight: FontWeight.w700),
          ),
          const Text(
            'Wednesday, Feb 17',
            style: TextStyle(
              fontSize: 26,
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: AppColor.primaryColor,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SvgPicture.asset(IconApp.iconIn),
                    const Text(
                      'In',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.all(30),
                decoration: BoxDecoration(
                    color: AppColor.colorOutContainer,
                    borderRadius: BorderRadius.circular(10)),
                child: Column(
                  children: [
                    SvgPicture.asset(IconApp.iconOut),
                    const Text(
                      'Out',
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.w700,
                          color: Colors.white),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

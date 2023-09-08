import 'package:employee_management/components/circle_avt_component.dart';
import 'package:employee_management/components/listtitle_component.dart';
import 'package:employee_management/themes/color_app.dart';
import 'package:employee_management/themes/icon_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../common/drawer_common.dart';

class HomeApp extends StatelessWidget {
  const HomeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor: AppColor.primaryColor, title: const Text('helllo')),
      endDrawer: DrawerComon(),
      body: const Text('Hello World'),
    );
  }
}

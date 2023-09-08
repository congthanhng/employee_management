import 'package:flutter/material.dart';

import '../components/circle_avt_component.dart';
import '../components/listtitle_component.dart';
import '../themes/color_app.dart';
import '../themes/icon_app.dart';

class DrawerComon extends StatelessWidget {
  const DrawerComon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: [
          DrawerHeader(
              decoration: BoxDecoration(color: AppColor.primaryColor),
              child: const Column(
                children: [
                  AvatarComponent(
                    imagePath: IconApp.iconUserOutline,
                    backgroundColor: const Color.fromARGB(255, 29, 110, 32),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    'Hello! MD. Sharafat',
                    style: TextStyle(color: Colors.white, fontSize: 21),
                  )
                ],
              )),
          ListTileComponent(
            ontap: () {},
            title: 'Attendance',
            iconPath: IconApp.iconAtendance,
          ),
          ListTileComponent(
            ontap: () {},
            title: 'Late Comers',
            iconPath: IconApp.iconLate,
          ),
          ListTileComponent(
            ontap: () {},
            title: 'Early Leavers',
            iconPath: IconApp.iconEarly,
          ),
          ListTileComponent(
              ontap: () {}, title: 'Leaves', iconPath: IconApp.iconLeaves),
          ListTileComponent(
            ontap: () {},
            title: 'Isuues Report',
            iconPath: IconApp.iconIsuuses,
          ),
          ListTileComponent(
            ontap: () {},
            title: 'Incident Report',
            iconPath: IconApp.iconIncident,
          ),
          ListTileComponent(
            ontap: () {},
            title: 'Employee List',
            iconPath: IconApp.iconEmtyList,
          ),
          ListTile(
            onTap: () {},
            title: Text(
              'Log Out',
              style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
            ),
            leading: Icon(Icons.login),
          )
        ],
      ),
    );
  }
}

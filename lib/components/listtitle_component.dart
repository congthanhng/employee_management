import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/icon_app.dart';

class ListTileComponent extends StatelessWidget {
  final Function()? ontap;
  final String title;
  final String? iconPath;

  const ListTileComponent(
      {Key? key, required this.title, this.ontap, this.iconPath})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: ontap,
      leading: iconPath != null
          ? SvgPicture.asset(iconPath!) // Sử dụng imgPath nếu nó tồn tại
          : null,
      title: Text(
        title,
        style: TextStyle(fontSize: 21, fontWeight: FontWeight.w400),
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../themes/color_app.dart';
import '../themes/image_app.dart';

class AvatarComponent extends StatelessWidget {
  final String? text;
  final String imagePath;
  final Color backgroundColor;
  const AvatarComponent(
      {super.key,
      this.text,
      required this.imagePath,
      required this.backgroundColor});

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: backgroundColor,
      radius: 50,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            imagePath,
            width: 43,
            height: 46,
          ),
          if (text != null)
            Text(
              text!,
              style: TextStyle(color: Colors.white),
            )
        ],
      ),
    );
  }
}

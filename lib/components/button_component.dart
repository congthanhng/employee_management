import 'package:employee_management/themes/color_app.dart';
import 'package:flutter/material.dart';

class ButtonCompo extends StatelessWidget {
  final void Function()? ontap;
  final String text;
  final Color color;
  final Color colorText;
  final String? imagePath;

  const ButtonCompo(
      {Key? key,
      required this.ontap,
      required this.text,
      required this.color,
      required this.colorText,
      this.imagePath})
      : super(key: key); //

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            border: Border.all(color: AppColor.primaryColor),
            borderRadius: BorderRadius.circular(6),
            color: color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (imagePath != null && imagePath!.isNotEmpty)
                Image.asset(
                  imagePath!,
                  width: 24,
                ),
              SizedBox(
                width: 10,
              ),
              Text(
                text,
                style: TextStyle(
                  fontSize: 19,
                  fontWeight: FontWeight.w400,
                  color: colorText,
                ),
              ),
            ],
          )),
    );
  }
}

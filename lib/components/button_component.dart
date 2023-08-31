import 'package:flutter/material.dart';

class ButtonCompo extends StatelessWidget {
  final void Function()? ontap;
  final String text;
  final Color color;
  final Color colorText;

  const ButtonCompo(
      {Key? key,
      required this.ontap,
      required this.text,
      required this.color,
      required this.colorText})
      : super(key: key); //

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          border: Border.all(color: Color(0xFF73AB6B)),
          borderRadius: BorderRadius.circular(6),
          color: color,
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: colorText,
            ),
          ),
        ),
      ),
    );
  }
}

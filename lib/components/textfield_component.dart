import 'package:flutter/material.dart';

import '../themes/color_app.dart';

class TextfieldComponent extends StatefulWidget {
  TextEditingController controller = TextEditingController();
  final String labelText;
  final bool obscureText;
  final IconData? prefixIcon;
  final String? starLable;
  final TextInputType? keyboardType;

  TextfieldComponent({
    Key? key,
    this.keyboardType = TextInputType.text,
    required this.controller,
    required this.labelText,
    required this.obscureText,
    this.starLable,
    this.prefixIcon,
  }) : super(key: key);

  @override
  _TextfieldComponentState createState() => _TextfieldComponentState();
}

class _TextfieldComponentState extends State<TextfieldComponent> {
  Color iconColor = Colors.grey;
  Color lableColor = Colors.grey;
  late FocusNode focusNode;

  @override
  void initState() {
    super.initState();
    focusNode = FocusNode();
    focusNode.addListener(() {
      setState(() {
        lableColor = focusNode.hasFocus ? Colors.green : Colors.grey;
        iconColor = focusNode.hasFocus ? Colors.green : Colors.grey;
      });
    });
  }

  @override
  void dispose() {
    focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      keyboardType: widget.keyboardType,
      controller: widget.controller,
      focusNode: focusNode, // Sử dụng FocusNode ở đây
      decoration: InputDecoration(
        prefixIcon: widget.prefixIcon != null
            ? Icon(
                widget.prefixIcon,
                color: iconColor,
              )
            : null,
        label: RichText(
            text: TextSpan(
                text: widget.labelText,
                style: TextStyle(color: lableColor),
                children: [
              TextSpan(
                  text: widget.starLable, style: TextStyle(color: Colors.red))
            ])),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.grey),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide(color: AppColor.primaryColor),
        ),
      ),
      obscureText: widget.obscureText,
    );
  }
}

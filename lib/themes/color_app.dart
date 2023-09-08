import 'dart:ui';

class AppColor {
  static final primaryColor = getColorFromHex('#73AB6B');
  static final colorChoose = getColorFromHex('F6F9F0');
  static final colorOutContainer = getColorFromHex('#414042');
}

Color getColorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

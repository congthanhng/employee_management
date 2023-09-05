import 'dart:ui';

class AppColor {
  static final primaryColor = getColorFromHex('#73AB6B');
}

Color getColorFromHex(String hexColor) {
  final hexCode = hexColor.replaceAll('#', '');
  return Color(int.parse('FF$hexCode', radix: 16));
}

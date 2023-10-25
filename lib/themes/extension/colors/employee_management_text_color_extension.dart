import 'package:flutter/material.dart';

class EmployeeManagementTextColorExtension
    extends ThemeExtension<EmployeeManagementTextColorExtension> {
  final Color textDefault;
  final Color textField;
  final Color textRoute;
  final Color textWarning;
  final Color textWhite;
  final Color subText;

  const EmployeeManagementTextColorExtension._(
      {required this.textDefault,
      required this.textField,
      required this.textRoute,
      required this.textWarning,
      required this.subText,
      required this.textWhite});

  factory EmployeeManagementTextColorExtension.light() {
    const  Color textDefault =  Color.fromRGBO(65, 64, 66, 1);
    const Color textField =  Color.fromRGBO(0, 0, 0, .3);
    const Color textRoute =  Color.fromRGBO(115, 171, 107, 1);
    const Color textWarning = Color.fromRGBO(255, 0, 0, .72);
    const Color subText =  Color.fromRGBO(0, 0, 0, .5);
    const Color textWhite =  Color.fromRGBO(255, 255, 255, 1);

    return const EmployeeManagementTextColorExtension._(
        textDefault: textDefault,
        textField: textField,
        textRoute: textRoute,
        textWarning: textWarning,
        subText: subText,
        textWhite: textWhite);
  }

  factory EmployeeManagementTextColorExtension.dark() {
    // dùng cost thay final giúp biên dịch tối ưu
    // nhưng giá trị khó thay đổi
    const Color textDefault =  Color.fromRGBO(255, 255, 255, 1);
    const Color textField = Color.fromRGBO(255, 255, 255, .4);
    const Color textRoute = Color.fromRGBO(115, 171, 107, 1);
    const Color textWarning = Color.fromRGBO(255, 0, 0, .82);
    const Color subText = Color.fromRGBO(255, 255, 255, .5);
    const Color textWhite = Color.fromRGBO(255, 255, 255, 1);

    return const EmployeeManagementTextColorExtension._(
        textDefault: textDefault,
        textField: textField,
        textRoute: textRoute,
        textWarning: textWarning,
        subText: subText,
        textWhite: textWhite);
  }

  @override
  ThemeExtension<EmployeeManagementTextColorExtension> copyWith(
      {Color? textDefault,
      Color? textField,
      Color? textRoute,
      Color? textWarning,
      Color? subText,
      Color? textWhite}) {
    return EmployeeManagementTextColorExtension._(
        textDefault: textDefault ?? this.textDefault,
        textField: textField ?? this.textField,
        textRoute: textRoute ?? this.textRoute,
        textWarning: textWarning ?? this.textWarning,
        subText: subText ?? this.subText,
        textWhite: textWhite ?? this.textWhite);
  }

  @override
  ThemeExtension<EmployeeManagementTextColorExtension> lerp(
      covariant ThemeExtension<EmployeeManagementTextColorExtension>? other,
      double t) {
    if (other is! EmployeeManagementTextColorExtension) return this;

    return EmployeeManagementTextColorExtension._(
        textDefault:
            Color.lerp(other.textDefault, other.textDefault, t) ?? textDefault,
        textField: Color.lerp(other.textField, other.textField, t) ?? textField,
        textRoute: Color.lerp(other.textRoute, other.textRoute, t) ?? textRoute,
        textWarning:
            Color.lerp(other.textWarning, other.textWarning, t) ?? textWarning,
        subText: Color.lerp(other.subText, other.subText, t) ?? subText,
        textWhite:
            Color.lerp(other.textWhite, other.textWhite, t) ?? textWhite);
  }
}

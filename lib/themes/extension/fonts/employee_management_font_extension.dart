import 'dart:ui';
import 'package:employee_management/themes/extension/fonts/employee_management_font.dart';
import 'package:flutter/material.dart';

extension EmployeeManagementExtension on BuildContext {
  TextStyle get subText => EmployeeManagementFont.subText as TextStyle;

  TextStyle get textWarningFont => EmployeeManagementFont.textWarning as TextStyle;

  TextStyle get textField => EmployeeManagementFont.textField as TextStyle;

  TextStyle get textStatus => EmployeeManagementFont.textStatus as TextStyle;

  TextStyle get textDrawer => EmployeeManagementFont.textDrawer as TextStyle;

  TextStyle get textLocation =>
      EmployeeManagementFont.textLocation as TextStyle;

  TextStyle get textTitle => EmployeeManagementFont.textTitle as TextStyle;

  TextStyle get textDate => EmployeeManagementFont.textDate as TextStyle;

  TextStyle get textName => EmployeeManagementFont.textName as TextStyle;

  TextStyle get textTime => EmployeeManagementFont.textTime as TextStyle;
}

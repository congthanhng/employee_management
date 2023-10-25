import 'package:employee_management/themes/extension/colors/employee_management_text_color_extension.dart';
import 'package:flutter/material.dart';

extension EMThemeColorExtension  on ThemeData{
  EmployeeManagementTextColorExtension get _textColorExtension=>
      this.extension() ?? EmployeeManagementTextColorExtension.light();

  Color get  textDefault => _textColorExtension.textDefault;

  Color get textField => _textColorExtension.textField;

  Color get textRoute => _textColorExtension.textRoute;

  Color get textWarning => _textColorExtension.textWarning;

  Color get textWhite => _textColorExtension.textWhite;

  Color get subText => _textColorExtension.subText;
}
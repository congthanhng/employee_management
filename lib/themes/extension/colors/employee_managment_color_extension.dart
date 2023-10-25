import 'package:employee_management/themes/extension/colors/employee_management_theme_color_extension.dart';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

extension EMContextColorExtension on BuildContext{
  ThemeData get theme => Theme.of(this);

  Color get textDefault => theme.textDefault;

  Color get textWarning => theme.textWarning;

  Color get textField => theme.textField;

  Color get subText => theme.subText;

  Color get textWhite => theme.textWhite;

  Color get textRoute => theme.textRoute;
}
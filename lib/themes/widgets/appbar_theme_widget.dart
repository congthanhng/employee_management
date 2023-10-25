import 'package:employee_management/themes/extension/colors/employee_management_theme_color_extension.dart';
import 'package:flutter/material.dart';

AppBarTheme appBarTheme({required ThemeData themeData}) => AppBarTheme(
      elevation: 0,
      color: themeData.textRoute,
      titleTextStyle: TextStyle(color: themeData.textWhite),
    );

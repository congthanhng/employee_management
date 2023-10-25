

import 'package:flutter/material.dart';

class EmployeeManagementFont {
  static const String fontFamily = 'Roboto';

  static const double _subText = 15;
  static const double _textWarningFont = 18;
  static const double _textField = 19;
  static const double _textStatus = 20;
  static const double _textDrawer = 21;
  static const double _textLocation = 22;
  static const double _textTitle = 24;
  static const double _textDate = 26;
  static const double _textName = 28;
  static const double _textTime = 44;

  static TextStyle get subText =>
      TextStyle(fontFamily: fontFamily, fontSize: _subText);

  static TextStyle get textWarning =>
      TextStyle(fontFamily: fontFamily, fontSize: _textWarningFont);

  static TextStyle get textField =>
      TextStyle(fontFamily: fontFamily, fontSize: _textField);

  static TextStyle get textStatus =>
      TextStyle(fontFamily: fontFamily, fontSize: _textStatus);

  static TextStyle get textDrawer =>
      TextStyle(fontFamily: fontFamily,fontSize: _textDrawer);

  static TextStyle get textLocation =>
      TextStyle(fontFamily: fontFamily,fontSize: _textLocation);

  static TextStyle get textTitle =>
      TextStyle(fontFamily: fontFamily,fontSize: _textTitle);

  static TextStyle get textDate =>
      TextStyle(fontFamily: fontFamily,fontSize: _textDate);

  static TextStyle get textName =>
      TextStyle(fontFamily: fontFamily,fontSize: _textName);

  static TextStyle get textTime =>
      TextStyle(fontFamily: fontFamily,fontSize: _textTime);
}

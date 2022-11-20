import 'package:flutter/material.dart';

class AppTheme {
  AppTheme._();

  static const MaterialColor myPrimarySwatch =
      MaterialColor(_myprimaryswatchPrimaryValue, <int, Color>{
    50: Color(0xFFFFE8E0),
    100: Color(0xFFFFC5B3),
    200: Color(0xFFFF9E80),
    300: Color(0xFFFF774D),
    400: Color(0xFFFF5A26),
    500: Color(_myprimaryswatchPrimaryValue),
    600: Color(0xFFFF3700),
    700: Color(0xFFFF2F00),
    800: Color(0xFFFF2700),
    900: Color(0xFFFF1A00),
  });
  static const int _myprimaryswatchPrimaryValue = 0xFFFF3D00;
}

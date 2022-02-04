import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFFFFD100);
  static const Color primaryVariant = Color(0xFFFFEE32);
  static const Color secondary = Color(0xFF321F28);
  static const Color grey = Color(0xFF393E46);
  static const Color bgColor = Color(0xFF222831);
  static const MaterialColor primarySwatcher =
      MaterialColor(0xFFFFD100, <int, Color>{
    50: Color(0xFFFFD100),
    100: Color(0xEFFFD100),
    200: Color(0xDFFFD100),
    300: Color(0xCFFFD100),
    400: Color(0xBFFFD100),
    500: Color(0xAFFFD100),
    600: Color(0x9FFFD100),
    700: Color(0x8FFFD100),
    800: Color(0x7FFFD100),
    900: Color(0x6FFFD100),
  });
}

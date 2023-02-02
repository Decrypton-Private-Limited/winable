

import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  // brightness: Brightness.light,
  primaryColor: const Color(0xff13548A), 
  colorScheme: ColorScheme.fromSwatch().copyWith(
    brightness: Brightness.light,
    secondary: const Color(0xff3BD3DE),
    primary:  const Color(0xff13548A),
    onSurface: Colors.black,
    onPrimary: Colors.white,
    onSecondary: Colors.white
  ),
);
ThemeData darkTheme = ThemeData(
    // brightness: Brightness.dark,
    primaryColor: const Color(0xff13548A),
  colorScheme: ColorScheme.fromSwatch().copyWith(
    brightness: Brightness.dark,
    onSurface: Colors.white,
    secondary: const Color(0xff3BD3DE),
    primary:  const Color(0xff13548A),
  ),
);
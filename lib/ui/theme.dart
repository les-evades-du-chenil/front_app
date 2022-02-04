import 'package:flutter/material.dart';
import 'package:front_les_evades/config/colors.dart';

ThemeData theme = ThemeData(
  primaryColor: AppColors.primary,
  primarySwatch: AppColors.primarySwatcher,
  appBarTheme: const AppBarTheme(
    color: AppColors.primary,
    titleTextStyle: TextStyle(color: Colors.black87),
  ),
  colorScheme: const ColorScheme(
    primary: AppColors.primary,
    primaryVariant: AppColors.primaryVariant,
    secondary: Colors.orange,
    secondaryVariant: Colors.deepOrange,
    surface: Colors.white,
    background: AppColors.bgColor,
    error: Colors.red,
    onPrimary: Colors.black87,
    onSecondary: Colors.white,
    onSurface: Colors.blue,
    onBackground: Colors.cyan,
    onError: Colors.white,
    brightness: Brightness.dark,
  ),
);

import 'package:flutter/material.dart';
import 'package:spotify/core/configs/theme/app_colos.dart';

class AppTheme {
  static final lightTheme = ThemeData(
    brightness: Brightness.light,
    primaryColor: AppColos.primary,
    scaffoldBackgroundColor: AppColos.lightBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColos.primary,
          textStyle: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.bold, color: Colors.white),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    ),
    fontFamily: 'Satoshi',
  );

  static final darkTheme = ThemeData(
    brightness: Brightness.dark,
    primaryColor: AppColos.primary,
    scaffoldBackgroundColor: AppColos.darkBackground,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          elevation: 0,
          backgroundColor: AppColos.primary,
          textStyle: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          )),
    ),
    fontFamily: 'Satoshi',
  );
}

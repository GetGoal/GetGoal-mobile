import 'package:flutter/material.dart';

import './font.dart';
import 'color.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: AppColors.white,
    appBarTheme: AppBarTheme(
      color: AppColors.white,
      elevation: 0,
      titleTextStyle: heading2(),
      centerTitle: false,
      titleSpacing: 20,
    ),
    fontFamily: 'Nunito',
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        elevation: 0,
        textStyle: TextStyle(
          color: AppColors.black,
          fontSize: 12,
          fontFamily: 'Nunito',
        ),
        splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
      ),
    ),
  );
}

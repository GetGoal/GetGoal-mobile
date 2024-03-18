import 'package:flutter/material.dart';

import './font.dart';
import 'color.dart';
import 'spacing.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary,
    colorScheme:
        ColorScheme.fromSwatch(primarySwatch: AppColors.primaryWhite).copyWith(
      primary: AppColors.primary,
    ),
    scaffoldBackgroundColor: AppColors.background,
    appBarTheme: AppBarTheme(
      color: Colors.transparent,
      elevation: 0,
      titleTextStyle: title1Bold(),
      centerTitle: false,
      titleSpacing: AppSpacing.appMargin,
      scrolledUnderElevation: 0,
    ),
    fontFamily: 'Nunito',
    fontFamilyFallback: const ['Kanit'],
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
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primary,
      selectionColor: AppColors.primary,
      selectionHandleColor: AppColors.primary,
    ),
    popupMenuTheme: const PopupMenuThemeData(
      enableFeedback: false,
      surfaceTintColor: Colors.transparent,
    ),
  );
}

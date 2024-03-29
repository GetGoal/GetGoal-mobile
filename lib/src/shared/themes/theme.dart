import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import './font.dart';
import 'color.dart';
import 'spacing.dart';

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    useMaterial3: true,
    primaryColor: AppColors.primary2,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: AppColors.primarySecondary,
      accentColor: AppColors.primary2,
      brightness: Brightness.dark,
      cardColor: AppColors.secondary,
    ).copyWith(
      brightness: Brightness.dark,
      primary: AppColors.primary2,
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
        backgroundColor: AppColors.secondary,
        elevation: 0,
        textStyle: subHeadlineRegular(),
        splashFactory: NoSplash.splashFactory,
        shadowColor: Colors.transparent,
      ),
    ),
    timePickerTheme: TimePickerThemeData(
      dayPeriodBorderSide: BorderSide(
        color: AppColors.white,
      ),
      hourMinuteTextColor: AppColors.white,
      dayPeriodTextColor: AppColors.white,
      dialTextColor: AppColors.white,
    ),
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primary2,
      selectionColor: AppColors.primary2,
      selectionHandleColor: AppColors.primary2,
    ),
    cupertinoOverrideTheme: CupertinoThemeData(
      primaryColor: AppColors.primary2,
    ),
    popupMenuTheme: const PopupMenuThemeData(
      enableFeedback: false,
      surfaceTintColor: Colors.transparent,
    ),
  );
}

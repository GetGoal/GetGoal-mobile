import 'package:flutter/material.dart';

class AppColors {
  static Color primary = HexColor.fromHex('FFD08A');
  static Color secondary = HexColor.fromHex('56945C');
  static Color white = HexColor.fromHex('FFFFFF');
  static Color black = HexColor.fromHex('000000');
  static Color stock = HexColor.fromHex('EAEBEC');
  static Color description = HexColor.fromHex('8C8C8C');
  static Color red = HexColor.fromHex('F04438');

  static MaterialColor primaryWhite = const MaterialColor(
    _whilteMaterialColor,
    <int, Color>{
      50: Color(_whilteMaterialColor),
      100: Color(_whilteMaterialColor),
      200: Color(_whilteMaterialColor),
      300: Color(_whilteMaterialColor),
      400: Color(_whilteMaterialColor),
      500: Color(_whilteMaterialColor),
      600: Color(_whilteMaterialColor),
      700: Color(_whilteMaterialColor),
      800: Color(_whilteMaterialColor),
      900: Color(_whilteMaterialColor),
    },
  );
  static const int _whilteMaterialColor = 0xFFFFFFFF;
}

extension HexColor on Color {
  static Color fromHex(String hexString) {
    final buffer = StringBuffer();
    if (hexString.length == 6 || hexString.length == 7) buffer.write('ff');
    buffer.write(hexString.replaceFirst('#', ''));
    return Color(int.parse(buffer.toString(), radix: 16));
  }
}

class AppShadow {
  static List<BoxShadow> shadow = [
    BoxShadow(
      color: AppColors.black.withOpacity(0.1),
      spreadRadius: 0,
      blurRadius: 48,
      offset: const Offset(0, 2),
    ),
  ];
}

import 'package:flutter/material.dart';

class AppColors {
  static Color primary = HexColor.fromHex('FFB167');
  static Color primary2 = HexColor.fromHex('FF8919');
  static Color secondary = HexColor.fromHex('222227');
  static Color white = HexColor.fromHex('FFFFFF');
  static Color black = HexColor.fromHex('000000');
  static Color stock = HexColor.fromHex('EAEBEC');
  static Color description = HexColor.fromHex('8C8C8C');
  static Color red = HexColor.fromHex('F04438');
  static Color background = HexColor.fromHex('0A0A10');

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
    const BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.05),
      offset: Offset(0.0, -2.0),
      blurRadius: 6.0,
    ),
    const BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.10),
      offset: Offset(0.0, 2.0),
      blurRadius: 8.0,
    ),
    const BoxShadow(
      color: Color.fromRGBO(255, 255, 255, 0.20),
      offset: Offset(0.0, -1.0),
      blurRadius: 0.0,
    ),
  ];
}

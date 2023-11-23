import 'package:flutter/material.dart';

const String fontFamily = 'Nunito';

TextStyle heading2() {
  return const TextStyle(
    fontSize: 32,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );
}

TextStyle title1() {
  return const TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
  );
}

TextStyle body2() {
  return const TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontFamily: fontFamily,
  );
}

TextStyle description() {
  return const TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontFamily: fontFamily,
  );
}

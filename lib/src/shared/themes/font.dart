import 'package:flutter/material.dart';

const String fontFamily = 'Nunito';
const List<String> fontFamilyFallback = ['IBMPlexSansThai'];

TextStyle heading1() {
  return const TextStyle(
    fontSize: 36,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
  );
}

TextStyle heading2() {
  return const TextStyle(
    fontSize: 32,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
  );
}

TextStyle heading3() {
  return const TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
  );
}

TextStyle heading3Regular() {
  return const TextStyle(
    fontSize: 24,
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
  );
}

TextStyle title1() {
  return const TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
  );
}

TextStyle body1() {
  return const TextStyle(
    fontSize: 16,
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
  );
}

TextStyle body2() {
  return const TextStyle(
    fontSize: 14,
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
  );
}

TextStyle description() {
  return const TextStyle(
    fontSize: 12,
    color: Colors.black,
    fontWeight: FontWeight.normal,
    fontFamily: fontFamily,
    fontFamilyFallback: fontFamilyFallback,
  );
}

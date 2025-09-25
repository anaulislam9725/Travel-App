import 'package:flutter/material.dart';

Color defaultColor = Colors.black;

class Styles {
  static final baseStyle = TextStyle(
    color: defaultColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
  );
  static final bodyMedium = TextStyle(
    color: defaultColor,
    fontSize: 18,
    fontWeight: FontWeight.w400,
  );

  static final bodyLarge = TextStyle(
    color: Colors.white,
    fontSize: 20,
    fontWeight: FontWeight.w400,
  );
  static final titleLarge = TextStyle(
    color: defaultColor,
    fontSize: 32,
    fontWeight: FontWeight.w600,
  );
}

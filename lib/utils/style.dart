import 'package:flutter/material.dart';

class Style {
  static final baseTextStyle = const TextStyle(
    fontFamily: 'Titillium Web',
  );

  static final myName = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );
  static final button1 = baseTextStyle.copyWith(
    color: Colors.white,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );
  static final text2 = baseTextStyle.copyWith(
    color: Colors.black,
    fontSize: 25.0,
    fontWeight: FontWeight.bold,
  );
  static final and = baseTextStyle.copyWith(
    color: Colors.black,
    fontSize: 20.0,
    fontWeight: FontWeight.bold,
  );
}

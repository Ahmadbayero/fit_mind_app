import 'package:flutter/material.dart';

class AppColor extends Color {
  AppColor(int value) : super(value);

  static const backgroundColorDark = Color(0xFF141622);
  static const backgroundColorLight = Color(0xFFfdfef9);

  static const buttonColor = Color(0xFF0fdfe9);
}

ButtonStyle primaryButton = ElevatedButton.styleFrom(
  primary: AppColor.buttonColor,
  padding: EdgeInsets.only(top: 13, bottom: 13),
  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5.0),
  ),
);

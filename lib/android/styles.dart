import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF673AB7);
const accentColor = const Color(0xFF52307c);

ThemeData primaryTheme() {
  return ThemeData(
    brightness: brightness,
    primaryColor: primaryColor,
    accentColor: accentColor,
    hintColor: primaryColor.withAlpha(70),
    textSelectionColor: primaryColor.withAlpha(60),
    textSelectionHandleColor: primaryColor,
    cursorColor: primaryColor,
    splashColor: primaryColor,
    fontFamily: "Montserrat",
    buttonTheme: ButtonThemeData(
      buttonColor: primaryColor,
      splashColor: primaryColor,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(360)
      )
    )
  );
}
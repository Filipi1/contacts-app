import 'package:flutter/cupertino.dart';

const brightness = Brightness.light;
const primaryColor = const Color(0xFF673AB7);
const accentColor = const Color(0xFF52307c);

CupertinoThemeData primaryTheme() {
  return CupertinoThemeData(
      brightness: brightness,
      primaryColor: primaryColor,
      textTheme: CupertinoTextThemeData(
        textStyle: TextStyle(fontFamily: "Montserrat")
      )
  );
}
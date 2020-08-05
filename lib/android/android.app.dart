import 'package:contact/android/pages/auth.page.dart';
// import 'package:contact/android/pages/home.page.dart';
import 'package:contact/android/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ContactAndroidApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: primaryTheme(),
      home: AuthPage(),
    );
  }
}
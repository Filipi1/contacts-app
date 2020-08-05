import 'dart:io';
import 'package:flutter/material.dart';
import 'ios/ios.app.dart';
import 'android/android.app.dart';

void main() {
  if (Platform.isIOS) {
    runApp(ContactCupertinoApp());
  } else {
    runApp(ContactAndroidApp());
  }
}


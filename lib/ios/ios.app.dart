import 'package:contact/ios/pages/home.page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class ContactCupertinoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
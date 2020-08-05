import 'dart:io';
import 'package:contact/ios/styles.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

class PersonalInput extends StatelessWidget {

  final IconData icon;
  final String hintText;
  final bool isPassword;
  final TextInputType keyboardType;
  final TextEditingController textEditingController;

  PersonalInput(this.textEditingController, {this.hintText = "", this.isPassword = false, this.keyboardType = TextInputType.text, this.icon = Icons.bookmark});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Platform.isIOS ? primaryColor.withAlpha(30) : Theme.of(context).primaryColor.withAlpha(30),
        borderRadius: BorderRadius.circular(360)
      ),
      child: Row(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.only(left: 18),
            child: Icon(icon, color: Platform.isIOS ? primaryColor : Theme.of(context).primaryColor),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 25),
              child: Platform.isIOS ? Container(
                child: CupertinoTextField(
                  controller: textEditingController,
                  obscureText: isPassword,
                  keyboardType: keyboardType,
                  style: TextStyle(fontSize: 18, color: primaryColor),
                ),
              ) : Container(
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: hintText,
                    border: InputBorder.none
                  ),
                  keyboardType: keyboardType,
                  obscureText: isPassword,
                  controller: textEditingController,
                  style: TextStyle(fontSize: 18, color: Theme.of(context).primaryColor),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

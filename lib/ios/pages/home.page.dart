import 'package:contact/shared/personal-input.widget.dart';
import 'package:flutter/cupertino.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    TextEditingController emailController = TextEditingController();

    return CupertinoPageScaffold(
      child: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
              child: Container(child: Column(
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 50, bottom: 40),
                    child: Image.asset("images/logo.png"),
                  ),
                  PersonalInput(emailController, icon: CupertinoIcons.mail_solid, hintText: "E-mail"),
                  SizedBox(height: 10),
                  //PersonalInput(Icons.lock, hintText: "Senha", isPassword: true),
                ],
              ),),
            ),
          ),
        ),
    );
  }
}

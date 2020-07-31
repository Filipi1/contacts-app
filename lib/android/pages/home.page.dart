import 'package:contact/shared/personal-input.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController emailController = new TextEditingController();
    TextEditingController passwordController = new TextEditingController();

    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          physics: ScrollPhysics(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0, vertical: 5),
            child: Container(child: Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top: 50, bottom: 70),
                  child: Image.asset("images/logo.png"),
                ),
                PersonalInput(emailController, icon: Icons.email, hintText: "E-mail"),
                SizedBox(height: 10),
                PersonalInput(passwordController, icon: Icons.lock, hintText: "Senha", isPassword: true),
                SizedBox(height: 30),
                RaisedButton(
                  onPressed: () {
                    print(emailController.text);
                    print(passwordController.text);
                  },
                  child: Text("Entrar", style: TextStyle(fontSize: 18)),
                ),
                SizedBox(height: 30),
              ],
            ),),
          ),
        ),
      ),
    );
  }
}

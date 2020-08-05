import 'package:contact/models/contact.model.dart';
import 'package:contact/shared/personal-input.widget.dart';
import 'package:flutter/material.dart';

class EditorContactPage extends StatelessWidget {
  final ContactModel model;

  EditorContactPage({this.model});

  @override
  Widget build(BuildContext context) {

    String title = model != null ? "Editar Contato" : "Adicionar Contato";
    TextEditingController nameController = TextEditingController();
    TextEditingController phoneController = TextEditingController();
    TextEditingController emailController = TextEditingController();

    if (model != null) {
      nameController.text = model?.name;
      phoneController.text = model?.phone;
      emailController.text = model?.email;
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(title, style: TextStyle(color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).primaryColor)),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).primaryColor
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
          child: Column(
            children: [
              PersonalInput(nameController, icon: Icons.person, hintText: "Nome"),
              SizedBox(height: 10),
              PersonalInput(emailController, icon: Icons.email, hintText: "E-mail"),
              SizedBox(height: 10),
              PersonalInput(phoneController, icon: Icons.phone, hintText: "Telefone"),
              SizedBox(height: 20),
              FlatButton(
                onPressed: () {},
                color: Theme.of(context).primaryColor,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Text("Salvar", style: TextStyle(fontSize: 17)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

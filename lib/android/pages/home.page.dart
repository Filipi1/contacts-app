import 'package:contact/android/pages/contact-editor.page.dart';
import 'package:contact/android/pages/contact.page.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text("Meus Contatos", style: TextStyle(color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).primaryColor)),
        centerTitle: true,
        leading: FlatButton(
          onPressed: () {},
          padding: EdgeInsets.all(0),
          shape: RoundedRectangleBorder(),
          child: Icon(Icons.search, color: Theme.of(context).primaryColor, size: 25),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => EditorContactPage()));
        },
        child: Icon(Icons.add),
      ),
      body: ListView(
        children: <Widget>[
          ListTile(
            leading: Image.network("https://www.klrealty.com.au/wp-content/uploads/2018/11/user-image-.png"),
            title: Text("Filipe Braga"),
            subtitle: Text("(85) 99692-9766"),
            trailing: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => ContactPage()));
              },
              padding: EdgeInsets.all(0),
              shape: RoundedRectangleBorder(),
              child: Icon(Icons.chat, color: Theme.of(context).primaryColor),
            ),
          )
        ],
      ),
    );
  }
}

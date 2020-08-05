import 'package:contact/android/pages/address.page.dart';
import 'package:contact/android/pages/contact-editor.page.dart';
import 'package:contact/models/contact.model.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ContactPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Contato", style: TextStyle(color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).primaryColor)),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
          color: Theme.of(context).brightness == Brightness.dark ? Colors.white : Theme.of(context).primaryColor
        ),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => EditorContactPage(model: ContactModel(id: "0", name: "jorge"),)));
        },
        child: Icon(Icons.edit),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          SizedBox(width: double.infinity, height: 20),
          Container(
            height: 200,
            width: 200,
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(200)
            ),
            child: Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor.withOpacity(0.1),
                  borderRadius: BorderRadius.circular(100),
                  image: DecorationImage(
                    image: NetworkImage("https://www.klrealty.com.au/wp-content/uploads/2018/11/user-image-.png")
                  )
              ),
            ),
          ),
          SizedBox(height: 20),
          Text("Filipe Braga", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25)),
          Text("(85) 99692-9766", style: TextStyle(fontSize: 15)),
          Text("filipe@gmail.com", style: TextStyle(fontWeight: FontWeight.w200, fontSize: 15)),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(),
                child: Icon(Icons.phone, color: Theme.of(context).primaryColor),
              ),
              FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(),
                child: Icon(Icons.email, color: Theme.of(context).primaryColor),
              ),
              FlatButton(
                onPressed: () {},
                shape: RoundedRectangleBorder(),
                child: Icon(Icons.camera_alt, color: Theme.of(context).primaryColor),
              )
            ],
          ),
          SizedBox(height: 20),
          ListTile(
            title: Text("Endereço", style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text("Rua Desembargador Moreira"),
                Text("Sergio Moreira"),
              ],
            ),
            trailing: FlatButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) => AddressPage()));
              },
              child: Icon(Icons.pin_drop, color: Theme.of(context).primaryColor),
            ),
          )
        ],
      ),
    );
  }
}

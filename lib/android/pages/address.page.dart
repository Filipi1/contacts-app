import 'package:contact/shared/personal-input.widget.dart';
import 'package:flutter/material.dart';

class AddressPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    TextEditingController searchController = TextEditingController();

    return Scaffold(
      appBar: AppBar(
        title: Text("Endereço",
            style: TextStyle(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.white
                    : Theme.of(context).primaryColor)),
        backgroundColor: Colors.transparent,
        iconTheme: IconThemeData(
            color: Theme.of(context).brightness == Brightness.dark
                ? Colors.white
                : Theme.of(context).primaryColor),
        centerTitle: true,
        elevation: 0,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.my_location),
      ),
      body: Column(
        children: [
          Container(
            height: 80,
            child: ListTile(
              title: Text(
                "Endereço atual",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Rua do Desenvolvedor, 231"),
                  Text("Picuí/CE"),
                ],
              ),
            ),
          ),
          Container(
            height: 80,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
              child: PersonalInput(searchController, icon: Icons.search, hintText: "Pesquisar...",),
            ),
          ),
          Expanded(child: Container(color: Colors.amber)),
        ],
      ),
    );
  }
}

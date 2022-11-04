import 'package:flutter/material.dart';
import 'package:my_first_app/widgets/drawer.dart';


class HomePage extends StatelessWidget {
 final int days=30;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text("Catalogue App",
          style: TextStyle(color: Colors.black),
        ),
        ),
        body: Center(
            child: Container(
              child: Text("Welcome to $days days of flutter"),
            ),
        ),

        drawer: MyDrawer(),
    );
  }
}


import 'package:flutter/material.dart';
import 'package:flutter_basics/Practices/drawer_menu.dart';

class CustomFontlar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      body: Center(
        child: Text(
          "Kalam Font Örneği",
          style: TextStyle(fontFamily: "KisiselFontum", fontSize: 25),
        ),
      ),

    );
  }
}

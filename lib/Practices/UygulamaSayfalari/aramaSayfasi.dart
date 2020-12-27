import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class AramaSayfasi extends StatelessWidget {

  AramaSayfasi(Key key) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: 50,itemExtent: 100,itemBuilder: (context, index) {
      return Material(borderRadius: BorderRadius.circular(10),
        color: index % 2 == 0 ? Colors.green.shade300 : Colors.green.shade800,
        child: Center(child: Text(index.toString()),)
      );
    });
  }

  Widget centerText() {
    return Center(
      child: Text(
        "Kalam Font Örneği",
        style: TextStyle(fontFamily: "KisiselFontum", fontSize: 25),
      ),
    );
  }
}

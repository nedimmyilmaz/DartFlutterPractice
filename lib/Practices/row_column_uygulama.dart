import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(primarySwatch: Colors.pinkAccent[300]),
    home: Scaffold(
      appBar: AppBar(
          title: Text(
            "text alignment uygulaması",
            style: TextStyle(color: Colors.white),
          )),
      body: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      color: Colors.yellow.shade200,
                      child: Text("D", style: TextStyle(fontSize: 40))),
                  Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      color: Colors.yellow.shade200,
                      child: Text("A", style: TextStyle(fontSize: 40))),
                  Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      color: Colors.yellow.shade200,
                      child: Text("R", style: TextStyle(fontSize: 40))),
                  Container(
                      margin: EdgeInsets.all(10),
                      padding: EdgeInsets.all(20),
                      color: Colors.yellow.shade200,
                      child: Text("T", style: TextStyle(fontSize: 40))),
                ]),
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                color: Colors.green.shade200,
                child: Text("E", style: TextStyle(fontSize: 45))),
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                color: Colors.green.shade200,
                child: Text("R", style: TextStyle(fontSize: 45))),
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                color: Colors.green.shade200,
                child: Text("S", style: TextStyle(fontSize: 45))),
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                color: Colors.green.shade200,
                child: Text("L", style: TextStyle(fontSize: 45))),
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                color: Colors.green.shade200,
                child: Text("E", style: TextStyle(fontSize: 45))),
            Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(20),
                color: Colors.green.shade200,
                child: Text("R", style: TextStyle(fontSize: 45))),
            Expanded(
                child: Container(
                    margin: EdgeInsets.all(10),
                    padding: EdgeInsets.all(20),
                    color: Colors.green.shade200,
                    child: Text("İ", style: TextStyle(fontSize: 45))))
          ]),
    ),
  ));
}

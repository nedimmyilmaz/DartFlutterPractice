import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'resim_buton_turleri.dart';

void main() {
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(primarySwatch: Colors.purple),
      home: Scaffold(
          appBar: AppBar(
            title: Text(
              "images uygulaması",
              style: TextStyle(color: Colors.white),
            ),
          ),
          body: ResimVeButonTurleri()),
    );
  }
}


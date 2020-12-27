import 'dart:math' as mat;
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class CollapsableToolbarKullanim extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverAppBar(
          pinned: true,
          floating: false,
          flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
            "assets/images/manzara.jpg",
            fit: BoxFit.cover,
          )),
          title: Text("Sliver App Bar'ım'"),
          centerTitle: true,
          expandedHeight: 150,
          backgroundColor: Colors.black87,
        ),

        // SliverGrid sabit elemanlarla bir satırda kaç eleman olacağını söylediğimiz yapı türü
        SliverGrid(
            delegate: SliverChildListDelegate(sliverListElemani()),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3)),

        // SliverGrid dinamik (builder ile üretilen) elemanlarla bir satırda kaç eleman olacağını söylediğimiz yapı türü

        SliverGrid(
            delegate: SliverChildBuilderDelegate(_sliverElemanUretenFonksiyon,
                childCount: 4),
            gridDelegate:
                SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2)),
        SliverPadding(
          padding: EdgeInsets.all(4),
          sliver: SliverList(
              delegate: SliverChildListDelegate(sliverListElemani())),
        ),
        SliverPadding(
            padding: EdgeInsets.all(6),
            sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                    _sliverElemanUretenFonksiyon,
                    childCount: 8))),
        SliverFixedExtentList(
          delegate: SliverChildListDelegate(sliverListElemani()),
          itemExtent: 120,
        ),
        SliverFixedExtentList(
          delegate: SliverChildBuilderDelegate(_sliverElemanUretenFonksiyon,
              childCount: 5),
          itemExtent: 120,
        ),
      ],
    );
  }

  List<Widget> sliverListElemani() {
    return [
      Container(
          padding: EdgeInsets.all(3),
          color: Colors.blue,
          child: Text(
            "Elemanlar",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
          height: 80),
      Container(
          color: Colors.green,
          child: Text(
            "Elemanlar",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
          height: 80),
      Container(
          color: Colors.yellow,
          child: Text(
            "Elemanlar",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
          height: 80),
      Container(
          color: Colors.red,
          child: Text(
            "Elemanlar",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
          height: 80),
      Container(
          color: Colors.orange,
          child: Text(
            "Elemanlar",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
          height: 80),
      Container(
          color: Colors.purple,
          child: Text(
            "Elemanlar",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
          height: 80),
      Container(
          color: Colors.blue,
          child: Text(
            "Elemanlar",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
          height: 80),
      Container(
          color: Colors.lightGreen,
          child: Text(
            "Elemanlar",
            style: TextStyle(fontSize: 25),
            textAlign: TextAlign.center,
          ),
          alignment: Alignment.center,
          height: 80),
    ];
  }

  Widget _sliverElemanUretenFonksiyon(BuildContext context, int index) {
    return Container(
        color: rastgeleRenkUret(),
        child: Text(
          "Dinamik Elemanlar $index",
          style: TextStyle(fontSize: 25),
          textAlign: TextAlign.center,
        ),
        alignment: Alignment.center,
        height: 80);
  }

  Color rastgeleRenkUret() {
    return Color.fromARGB(mat.Random().nextInt(255), mat.Random().nextInt(255),
        mat.Random().nextInt(255), mat.Random().nextInt(255));
  }
}

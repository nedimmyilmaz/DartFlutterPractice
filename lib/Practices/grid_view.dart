import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';

class GridViewKullanimi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: 100,
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return GestureDetector(
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(
                      color: Colors.green.shade600,
                      style: BorderStyle.solid,
                      width: 4),
                  boxShadow: [
                    new BoxShadow(
                        color: Colors.blueGrey.shade900,
                        offset: new Offset(10, 5))
                  ],
                  // color: Colors.orange[100 * ((index+1) % 8)],
                  gradient: LinearGradient(
                      colors: [Colors.blue.shade200, Colors.purple.shade200],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomLeft),
                  image: DecorationImage(
                      image: AssetImage("assets/images/manzara.jpg"),
                      fit: BoxFit.contain,
                      alignment: Alignment.topCenter)),
              margin: EdgeInsets.all(20),
              alignment: Alignment.bottomCenter,
              child: Text(
                'Merhaba Flutter!',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 18),
              ),
            ),
            onTap: ()=> Fluttertoast.showToast(msg: "$index .indekse tıklandı"),
            onLongPress: ()=> Fluttertoast.showToast(msg: "$index .indekse uzun basıldı"),
          );
        });
  }
}

/*GridView.extent(
    maxCrossAxisExtent: 200,
      primary: false,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
      ],
    );*/
/*
* GridView.count(
      crossAxisCount: 3,
      primary: false,
      padding: EdgeInsets.all(20),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.orange.shade300,
          child: Text('Merhaba Flutter!', textAlign:  TextAlign.center,),
        ),
      ],
    );*/

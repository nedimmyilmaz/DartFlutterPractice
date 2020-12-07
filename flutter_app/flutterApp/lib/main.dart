import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';

void main() {
  runApp(
    MaterialApp(
        theme: ThemeData(
            primarySwatch: Colors.lightGreen, accentColor: Colors.deepPurple),
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: AppBar(
            title: Text(
              "nedimyilmaz",
              style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.black,
                  fontWeight: FontWeight.w400),
            ),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              print("Butona tıklandı");
            },
            child: Icon(
              Icons.emoji_people_sharp,
              size: 30.0,
              color: Colors.yellowAccent.shade700,
            ),
          ),
          body: Container(
            color: Colors.blue[200],
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment
                  .spaceEvenly, // ikonların yeriyle ilgili widgetlar
              /* crossAxisAlignment:
                  CrossAxisAlignment.stretch,*/ // stretch ile gerdirir

              children: [
                Icon(Icons.ac_unit, color: Colors.yellowAccent, size: 55),

                Icon(Icons.circle, color: Colors.deepPurple[200], size: 55),
                Icon(Icons.add_circle_outline,
                    color: Colors.indigoAccent[200], size: 55),
                Icon(Icons.expand,
                    color: Colors.pinkAccent,
                    size: 55) // Expanded () ikonlar taşmasın diye ayarlar
              ],
            ),

            /*height: 500,
            width: 500,
            alignment: Alignment.center,
            // color: Colors.lightBlueAccent.shade100,
            child: Text(
              "Flutter'ı çok seviyorum.",
              style: TextStyle(fontSize: 30.0),
            ),

            constraints: BoxConstraints.expand(width: 300, height: 400),
            decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.yellow,
                border: Border.all(color: Colors.purple)),
            margin: EdgeInsets.only(left: 10, top: 40, right: 10, bottom: 40),
            // margin vermeye yarar.

            padding: EdgeInsets.all(80.0),*/
            // minHeight: 100.0,
            // maxHeight: 150.0,
            // minWidth: 200.0,
            // maxWidth: 250.0),
          ),
        )

        /* body: Container(                              -
          color: Colors.lightBlueAccent.shade,    -   -
          child: Center(                          -   -   -   =  ** Container ın tamamını renklendirip ortalıyor.
            child: Text(                          -   -   -   =   ** Yukarıdaki kod yazı kadar container yapıp renklendiriyor.
              "Flutter'ı Seviyorum!",             -   -
              style: TextStyle(fontSize: 30),     -
            ),
          )),*/
        ),
  );
}

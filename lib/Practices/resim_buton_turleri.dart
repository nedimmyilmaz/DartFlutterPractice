import 'package:flutter/material.dart';

import 'images.dart';

class ResimVeButonTurleri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Text(
          "Images Sıralama Uygulaması",
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        IntrinsicHeight(
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              margin: EdgeInsets.all(7.5),
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/Twitch_27.jpg"),
                  Text("TW")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(7.5),
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/JarvanIV_0.jpg"),
                  Text("J4")
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(7.5),
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Image.asset("assets/images/Twitch_27.jpg"),
                  Text("TW")
                ],
              ),
            ),
          ]),
        ),
        IntrinsicHeight(
          child:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            Container(
              margin: EdgeInsets.all(7.5),
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Column(
                children: [
                  FlutterLogo(
                    size: 80,
                  ),
                  Text("Flutter Logo")
                ],
              ),
            ),
            Container(
              color: Colors.yellow,
              margin: EdgeInsets.all(7.5),
              width: 100,
              height: 100,
              child: Column(
                children: [FlutterLogo(size: 80), Text("Flutter Logo -2")],
              ),
            ),
            Container(
              margin: EdgeInsets.all(7.5),
              width: 100,
              height: 100,
              color: Colors.yellow,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Expanded(
                      child: Placeholder(
                        color: Colors.pinkAccent,
                      )),
                  Text("J4")
                ],
              ),
            ),
          ]),
        ),
        Container(
            margin: EdgeInsets.symmetric(horizontal: 80, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                RaisedButton(
                  child: Text("Raised Button"),
                  color: Colors.orange,
                  onPressed: () => debugPrint("butona basıldı"),
                ),
                RaisedButton(
                  child: Text(
                    "Nedim Yılmaz",
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.purple,
                  onPressed: () => debugPrint("Lambda fonksiyon"),
                ),
                RaisedButton(
                  elevation: 12,
                  child: Text(
                    "Hızla devam ediyor",
                    style: TextStyle(color: Colors.limeAccent),
                  ),
                  color: Colors.green,
                  onPressed: () => uzunMetod(),
                ),
                IconButton(
                    icon: Icon(
                      Icons.adb_outlined,
                      size: 50,
                      color: Colors.red,
                    ),
                    onPressed: () {}),
                FlatButton(
                    onPressed: () {},
                    child: Text(
                      "Flat Button",
                      style: TextStyle(color: Colors.green, fontSize: 25.0),
                    ))
              ],
            ))
      ],
    );
  }

  void uzunMetod() {
    debugPrint("uzun metod");
  }
}

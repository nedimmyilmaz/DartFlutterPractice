import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class PageViewOrnegi extends StatefulWidget {
  PageViewOrnegi(Key k) : super(key: k);

  @override
  _PageViewOrnegiState createState() => _PageViewOrnegiState();
}

class _PageViewOrnegiState extends State<PageViewOrnegi> {
  var myController =
      PageController(initialPage: 0, keepPage: true, viewportFraction: 1);

  @override
  Widget build(BuildContext context) {
    return Column(children: [
      Expanded(
        child: PageView(
          scrollDirection: Axis.horizontal,
          reverse: false,
          controller: myController,
          pageSnapping: false,
          onPageChanged: (index) {
            Fluttertoast.showToast(msg: " -> $index");
          },
          children: [
            Container(
              width: 400,
              height: 100,
              color: Colors.blueAccent,
              child: Center(
                child: Text(
                  "Sayfa 0 ",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
            Container(
              width: 400,
              height: 100,
              color: Colors.greenAccent,
              child: Center(
                child: Text(
                  "Sayfa 1 ",
                  style: Theme.of(context).textTheme.headline3,
                ),
              ),
            ),
          ],
        )

      ),
      Expanded(child: Container(height: 100, width:400, color: Colors.orange,))
    ]);
  }
}

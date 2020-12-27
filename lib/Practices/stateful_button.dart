import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        /*textTheme: TextTheme(headline1: TextStyle(fontSize: 25)),*/
          primarySwatch: Colors.lightBlue),
      title: "Material App",
      home: MyHomePage(
        title: "HOME PAGE TITLE ",
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  final String title;
  int sayac = 0;

  MyHomePage({this.title}) {}

  @override
  State<StatefulWidget> createState() {
    return _MyHomePageState();
  }
}

class _MyHomePageState extends State<MyHomePage> {
  int sayac = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _sayaciArtir();
          });
        },
        child: Icon(Icons.add_outlined),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RaisedButton(
                child: Text("Artır"),
                onPressed: (_sayaciArtir),
                color: Colors.greenAccent[400]),
            RaisedButton(
                child: Text("Azalt"),
                onPressed: (_sayaciAzalt),
                color: Colors.redAccent[400]),
            Text(
              "${widget.sayac}",
              style: Theme.of(context).textTheme.headline3.copyWith(
                  color: widget.sayac <=0 ? Colors.red : Colors.green
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _sayaciArtir() {
    setState(() {
      widget.sayac++;
      debugPrint("Sayaç değeri artırıldı : ${widget.sayac}");
    });
  }

  void _sayaciAzalt() {
    setState(() {
      widget.sayac--;

    });
  }
}

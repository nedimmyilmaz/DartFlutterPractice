import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Practices/bottom_navigationbar.dart';

import 'Veri/Veri.dart';

class AnaSayfa extends StatefulWidget {
  AnaSayfa(Key k) : super(key: k);

  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  List<Veri> tumVeriler;

  @override
  void initState() {
    super.initState();

    tumVeriler = [
      Veri("Biz Kimiz ", "İçerik Örneği", false),
      Veri("Biz Kimiz2 ", "İçerik Örneği2", false),
      Veri("Biz Kimiz3 ", "İçerik Örneği3", false),
      Veri("Biz Kimiz4 ", "İçerik Örneği4", false)
    ];
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (context, index) {
      return ExpansionTile(key: PageStorageKey("$index"),
        initiallyExpanded: tumVeriler[index].expanded,
        title: Text(tumVeriler[index].baslik),
        children: [
          Container(
            color: index % 2 == 0 ? Colors.green : Colors.deepOrange,
            height: MediaQuery.of(context).size.height *0.1,
            width: MediaQuery.of(context).size.width *0.8,
            child: Text(tumVeriler[index].icerik),
          )
        ],
      );
    }, itemCount: tumVeriler.length,);
  }
}

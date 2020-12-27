import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Listeler extends StatelessWidget {
  List<int> listeNumarasi = List.generate(16, (index) => index);
  List<String> listeBaslik =
      List.generate(16, (index) => "Liste başlığı $index");

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: listeNumarasi.map((e) => Column(
              children: [
                Container(
                  child: Card(
                      elevation: 8,
                      color: Colors.blueGrey.shade100,
                      margin: EdgeInsets.all(10),
                      child: ListTile(
                        leading: CircleAvatar(
                          child: Icon(Icons.android_sharp),
                          radius: 17,
                          foregroundColor: Colors.blue,
                        ),

                        title: Text(" Numarası --> $e"),
                        subtitle: Text(listeBaslik[e]),
                        trailing: Icon(
                          Icons.announcement,
                          color: Colors.red.shade300,
                        ),
                      )),
                ),
                Divider(
                  color: Colors.red,
                )
              ],
            ),).toList(),
    );
  }
}

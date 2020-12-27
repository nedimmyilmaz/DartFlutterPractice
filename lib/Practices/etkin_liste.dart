import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';


class EtkinListe extends StatelessWidget {
  List<Ogrenci> tumOgrenciler = [];

  @override
  Widget build(BuildContext context) {
    OgrenciVerileriniGetir();

    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index) => Card(
            color: Colors.white60,
            child: ListTile(
              leading: Icon(Icons.animation),
              title: Text(tumOgrenciler[index]._isim),
              tileColor: Colors.blue.shade200,
              subtitle: Text(tumOgrenciler[index]._aciklama),
              onTap: () =>
                {toastMesajGoster(index),
                alertDialogGoster(context, index)
                }
              ,
              onLongPress: () => {toastMesajGoster(index), alertDialogGoster(context, index)} ,
            )));
  }
  void OgrenciVerileriniGetir() {
    tumOgrenciler = List.generate(
        100,
            (index) => Ogrenci(" Öğrenci $index adı  ", " Öğrenci $index açıklaması",
            index % 2 == 0 ? true : false));
  }

  void toastMesajGoster(int index) {
    Fluttertoast.showToast(
      msg: tumOgrenciler[index].toString(),
      toastLength: Toast.LENGTH_LONG,
      textColor: Colors.orange
    );
  }

  void alertDialogGoster(BuildContext ctx, int index){
   showDialog (
      context: ctx,
      barrierDismissible: false,
      // false = user must tap button, true = tap outside dialog
      builder: (ctx) {
        return AlertDialog(
          title: Text('Alert Dialog Başlığı'),

          content: SingleChildScrollView(child: ListBody(
            children: [
              Text(tumOgrenciler[index]._isim.toString()),
              Text(tumOgrenciler[index]._aciklama.toString()),
              Text('Alert Dialog İçeriği '),

            ],
          ),),
          actions: <Widget>[
           ButtonBar(children: [
             FlatButton(
               child: Text('Tamam', style: TextStyle(fontSize: 16, color: Colors.black87),),
               color: Colors.green.shade100,
               onPressed: () {
                 Navigator.of(ctx).pop(); // Dismiss alert dialog
               },
             ),
             RaisedButton(
               child: Text("Kapat", style: TextStyle(fontSize: 16, color: Colors.black87)),
               color: Colors.red.shade100,
               onPressed: (){},
             )
           ],)
          ],
        );
      }
    );
  }

}

class Ogrenci {
  String _isim;
  String _aciklama;
  bool _cinsiyet;

  Ogrenci(this._isim, this._aciklama, this._cinsiyet);

  @override
  String toString() {
    // TODO: implement toString
    return "Öğrencinin adı : $_isim, Açıklaması : $_aciklama";
  }
}

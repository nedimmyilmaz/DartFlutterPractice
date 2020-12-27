import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:date_format/date_format.dart';

class TarihveSaatSecmeIslemleri extends StatefulWidget {
  @override
  _TarihveSaatSecmeIslemleriState createState() =>
      _TarihveSaatSecmeIslemleriState();
}

class _TarihveSaatSecmeIslemleriState extends State<TarihveSaatSecmeIslemleri> {
  DateTime anlikTarih = DateTime.now();
  DateTime ucAyOnce = DateTime(2020, DateTime.now().month - 3);
  DateTime onGunSonra = DateTime(2020, 12, DateTime.now().day + 10);
  TimeOfDay anlikSaat = TimeOfDay.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Tarih ve Saat Seçme"),
      ),
      body: Center(
          child: Column(
        children: [
          RaisedButton(
            child: Text("Tarih"),
            onPressed: () {
              showDatePicker(
                      context: context,
                      initialDate: anlikTarih,
                      firstDate: anlikTarih,
                      lastDate: onGunSonra)
                  .then((secilenTarih) {
                Fluttertoast.showToast(msg: "tarih : $secilenTarih");
                debugPrint("tarih : " +
                    formatDate(secilenTarih, [dd, ".", mm, ".", yyyy]));
              });
            },
            color: Colors.green,
          ),
          RaisedButton(
            child: Text("Saat"),
            onPressed: () {
              showTimePicker(context: context, initialTime: anlikSaat)
                  .then((secilenSaat) {
                Fluttertoast.showToast(msg: "saat : $secilenSaat");
                debugPrint(secilenSaat.toString());
              });
            },
          ),
        ],
      )),
    );
  }
}

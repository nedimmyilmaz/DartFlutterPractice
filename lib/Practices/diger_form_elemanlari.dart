import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class DigerFormElemanlari extends StatefulWidget {
  @override
  _DigerFormElemanlariState createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  bool checkBoxDurumu = false;
  String sehir = "";
  bool switchDurumu = false;
  double sliderDegeri = 10;
  String secilenSehirRengi = "Ankara";
  List<String> sehirler = ["Istanbul", "Gaziantep", "Mersin"];
  String secilenSehir = "Gaziantep";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.attribution_sharp),
      ),
      appBar: AppBar(
        title: Text("Diger Form İşlemleri"),
        backgroundColor: Colors.black87,
      ),
      body: Padding(
        padding: EdgeInsets.all(10),
        child: ListView(
          children: [
            CheckboxListTile(
              value: checkBoxDurumu,
              onChanged: (secildi) {
                setState(() {
                  checkBoxDurumu = secildi;
                });
              },
              activeColor: Colors.green,
              title: Text("Onaylamak için bas"),
              subtitle: Text("burası da alt metin"),
              secondary: Icon(Icons.auto_awesome),
            ),
            RadioListTile(
              value: "Ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  Fluttertoast.showToast(
                      msg: "Seçtiğiniz: $sehir",
                      fontSize: 15,
                      backgroundColor: Colors.blue);
                });
              },
              title: Text("Ankara"),
              subtitle: Text("Plaka: 06"),
              secondary: Icon(Icons.looks_6_rounded, color: Colors.blue),
            ),
            RadioListTile(
              value: "Afyon",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger;
                  Fluttertoast.showToast(
                      msg: "Seçtiğiniz: $sehir",
                      fontSize: 15,
                      backgroundColor: Colors.blue);
                });
              },
              title: Text("Afyon"),
              subtitle: Text("Plaka : 3"),
              secondary: Icon(
                Icons.looks_3,
                color: Colors.blue,
              ),
            ),
            RadioListTile(
                value: "Adana",
                groupValue: sehir,
                onChanged: (deger) {
                  setState(() {
                    sehir = deger;
                    Fluttertoast.showToast(
                        msg: "Seçtiğiniz: $sehir",
                        fontSize: 15,
                        backgroundColor: Colors.blue);
                  });
                },
                title: Text("Adana"),
                subtitle: Text("Plakası : 1 "),
                secondary: Icon(
                  Icons.looks_one_rounded,
                  color: Colors.blue,
                )),
            SwitchListTile(
              value: switchDurumu,
              onChanged: (deger) {
                setState(() {
                  switchDurumu = deger;
                  Fluttertoast.showToast(
                      msg: "Seçtiğiniz: $switchDurumu",
                      fontSize: 15,
                      backgroundColor: Colors.blue);
                });
              },
              title: Text("switch button"),
              secondary: Icon(Icons.touch_app_rounded),
            ),
            Slider(
              value: sliderDegeri,
              onChanged: (yeniDeger) {
                setState(() {
                  sliderDegeri = yeniDeger;
                  Fluttertoast.showToast(
                      msg: "Seçtiğiniz deger : $sliderDegeri",
                      fontSize: 15,
                      backgroundColor: Colors.blue);
                });
              },
              min: 10,
              max: 50,
              divisions: 10,
              label: sliderDegeri.toString(),
            ),
            DropdownButton<String>(
                items: [
                  DropdownMenuItem(
                    child: Row(
                      children: [
                        Text("Ankara"),
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.red,
                          margin: EdgeInsets.all(10),
                        )
                      ],
                    ),
                    value: "Ankara",
                  ),
                  DropdownMenuItem(
                    child: Row(
                      children: [
                        Text("Afyon"),
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.green,
                          margin: EdgeInsets.all(10),
                        )
                      ],
                    ),
                    value: "Afyon",
                  ),
                  DropdownMenuItem(
                    child: Row(
                      children: [
                        Text("Adana"),
                        Container(
                          width: 20,
                          height: 20,
                          color: Colors.blue,
                          margin: EdgeInsets.all(10),
                        )
                      ],
                    ),
                    value: "Adana",
                  ),
                ],
                onChanged: (String secilen) {
                  setState(() {
                    secilenSehirRengi = secilen;
                  });
                },
                hint: Text("Şehir Seçin: "),
                value: secilenSehirRengi),
            DropdownButton<String>(
              items: sehirler.map((anlikSehirDegeri) {
                return DropdownMenuItem(
                  child: Text(anlikSehirDegeri),
                  value: anlikSehirDegeri,
                );
              }).toList(), onChanged: (s){
                setState(() {
                  secilenSehir =s;
                });
            }, value: secilenSehir,
            )
          ],
        ),
      ),
    );
  }
}

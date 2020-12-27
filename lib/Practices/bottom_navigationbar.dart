import 'package:flutter/material.dart';
import 'package:flutter_basics/Practices/UygulamaSayfalari/PageViewOrnegi.dart';
import 'package:flutter_basics/Practices/UygulamaSayfalari/aramaSayfasi.dart';
import 'package:flutter_basics/Practices/drawer_menu.dart';
import 'package:flutter_basics/Practices/tabs.dart';

import 'UygulamaSayfalari/anaSayfa.dart';

class BottomNavigationKullanimi extends StatefulWidget {
  @override
  _BottomNavigationKullanimiState createState() => _BottomNavigationKullanimiState();
}

class _BottomNavigationKullanimiState extends State<BottomNavigationKullanimi> {
  AramaSayfasi aramaSayfasi;
  AnaSayfa anaSayfa;
  PageViewOrnegi pageViewSayfasi;
  int sayfaSayisi =0;
  List<Widget> butunSayfalar;
  var keyAnaSayfa = PageStorageKey("anaSayfaKey");
  var keyAramaSayfa = PageStorageKey("aramaSayfaKey");
  var keyPageView = PageStorageKey("pageViewKey");
  PageViewOrnegi pageViewOrnegi;
  TabBarKullanimi tabBarKullanimi;


  @override

  void initState() {
    // TODO: implement initState
    super.initState();
    anaSayfa = AnaSayfa(keyAnaSayfa);
    aramaSayfasi= AramaSayfasi(keyAramaSayfa);
    pageViewSayfasi = PageViewOrnegi(keyPageView);
    butunSayfalar= [anaSayfa, aramaSayfasi,pageViewSayfasi, tabBarKullanimi];
    pageViewOrnegi = PageViewOrnegi(keyPageView);

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: DrawerMenu(),
      appBar: AppBar(
        title: Text("Fonts"),
      ),
      body: butunSayfalar[sayfaSayisi],
      bottomNavigationBar: bottomNavBar(),
    );
  }

   Center centerText() {
    return Center(
      child: Text(
        " Kalam Font Örneği",
        style: TextStyle(fontFamily: "KisiselFontum", fontSize: 25),
      ),
    );
  }

  Theme bottomNavBar() {
    return Theme(
      data: ThemeData(primaryColor: Colors.lightBlue, canvasColor: Colors.white12,),
      child: BottomNavigationBar(items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon: Icon(Icons.camera), label: "Ana Sayfa", backgroundColor: Colors.green.shade500),
        BottomNavigationBarItem(
            icon: Icon(Icons.photo_library_outlined), label: "Arama Sayfası", backgroundColor: Colors.purple.shade200),
        BottomNavigationBarItem(icon: Icon(Icons.folder), label: "Belgeler", backgroundColor: Colors.blue),
        BottomNavigationBarItem(
            icon: Icon(Icons.unfold_more_rounded), label: "**", backgroundColor: Colors.orange.shade200),
      ],
        type: BottomNavigationBarType.shifting,
        currentIndex: sayfaSayisi,
        onTap: (index){
        setState(() {
          sayfaSayisi=index;
          if (index ==3) {
            Navigator.of(context).push(MaterialPageRoute(builder: (context) => TabBarKullanimi()));
          }  
        });

        },
      ),
    );
  }
}

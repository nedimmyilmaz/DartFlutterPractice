// ignore: avoid_web_libraries_in_flutter

import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_basics/Practices/bottom_navigationbar.dart';
import 'package:flutter_basics/Practices/custom_font.dart';
import 'package:flutter_basics/Practices/drawer_menu.dart';

// import 'package:flutter_basics/Practices/stepper_kullanimi.dart';
// import 'package:flutter_basics/Practices/tarih_saat_secme.dart';
// import 'package:flutter_basics/Practices/textField_islemleri.dart';
// import 'package:flutter_basics/Practices/navigasyon_islemleri.dart';
// import 'package:flutter_basics/Practices/form_textfrom.dart';
// import 'package:flutter_basics/Practices/diger_form_elemanlari.dart';

/*// initialRoute: "GirisResimSayfasi",  // başlangıç sayfası
      routes: {
        //   "/" : (context) => NavigasyonIslemleri(),    // Bu şekilde tanımlarsak alttaki 'home' geçersiz kalır, işlevleri aynıdır
        "/": (context) => GirisResimSayfasi(),
        "AnaSayfayaGit": (context) => NavigasyonIslemleri(),
        "/FyeGit": (context) => FSayfasi(),
        // routes sayesinde direkt sayfaya gidecek hazır metod yazmış gibi oluyoruz
        "GyeGit": (context) => GSayfasi(),
        "/listeSayfasinaGit": (context) => ListeSayfasi(),

        // "/listeDetayaGit" : (context) => ListeDetay(tikla)
      },

      onGenerateRoute: (RouteSettings settings) {
        List<String> elemanlar = settings.name.split("/");

        if (elemanlar[1] == "detay") {
          return MaterialPageRoute(
              builder: (context) => ListeDetay(int.parse(elemanlar[2])));
        }
      },
      // çalışmadı

      // onUnknownRoute: (RouteSettings settings) =>
      //     MaterialPageRoute(builder: (context) => GirisResimSayfasi()),
      // // eğer rota bulunamazsa beni resim sayfasına atacak


      // home: NavigasyonIslemleri(),
    ));
*/
void main() => runApp(MaterialApp(
      theme: ThemeData(fontFamily: "KisiselFontum"),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData.dark(),

      home: BottomNavigationKullanimi(),

      // // initialRoute: "GirisResimSayfasi",
      //     routes: {
      //     //  "/": (context) => GirisResimSayfasi(),
      //       "/": (context) => StepperKullanimi(),
      //       "/formIslemleri" : (context)=> FormVeTextFormIslemleri(),
      //       "/textfieldIslemleri" : (context) => TextfieldIslemleri(),
      //       "/digerFormIslemleri" : (context) => DigerFormElemanlari(),
      //       "AnaSayfayaGit": (context) => NavigasyonIslemleri(),
      //       "/FyeGit": (context) => FSayfasi(),
      //       "GyeGit": (context) => GSayfasi(),
      //       "/listeSayfasinaGit": (context) => ListeSayfasi(),
      //       "/tarihSaatSayfasi" : (context) => TarihveSaatSecmeIslemleri(),
      //       "/stepperSayfasi" : (context) => StepperKullanimi(),
      //
      //
      //     },
      //
      //     onGenerateRoute: (RouteSettings settings) {
      //       List<String> elemanlar = settings.name.split("/");
      //
      //       if (elemanlar[1] == "detay") {
      //         return MaterialPageRoute(
      //             builder: (context) => ListeDetay(int.parse(elemanlar[2])));
      //       }
      //     },
    ));

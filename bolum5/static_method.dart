import '../bolum4/getter_setter.dart';

main(List<String> args) {
  var ogr1 = Ogrenci();
  ogr1.ad = "Nedim";
  Ogrenci.ogrSayisi++;
  ogrSayisiGoster();
  print("isim: ${ogr1.ad} | okul kodu: ${Ogrenci.okulKodu}\n");

  var ogr2 = Ogrenci();
  ogr2.ad = "Ali";
  Ogrenci.ogrSayisi++;
  ogrSayisiGoster();
  print("isim: ${ogr2.ad} | okul kodu: ${Ogrenci.okulKodu}");
}

class Ogrenci {
  String ad;
  static int okulKodu = 0001;
  static int ogrSayisi = 0;
}

void ogrSayisiGoster() {
  print("Öğrencinin sayısı: ${Ogrenci.ogrSayisi}");
}

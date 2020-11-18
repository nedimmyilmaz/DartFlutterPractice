void main(List<String> args) {
  // print("Ben Dart'ı öğreneceğim!");
  // print(5 + 6);
  // print("Nedim" + " YILMAZ");

  String isim = "Nedim";
  String soyIsim = "YILMAZ";
  String kurs = " Dart ";
  String kursTanimi = " Dart'ı ve Flutter'ı öğreneceğiz. ";

  print(isim + " " + soyIsim);
  print("$isim $soyIsim");
  print("Benim adımda olan karakter sayısı ${isim.length}");
  print("Benim soyadımda olan karakter sayısı ${soyIsim.length}");

  print(
      "Bu çok uzun bir yazı.Bu çok uzun bir yazı.Bu çok uzun bir yazı.Bu çok uzun bir yazı.Bu çok uzun bir yazı"
      "Bu çok uzun bir yazı."
      "Bu çok uzun bir yazı.Bu çok uzun bir yazı.Bu çok uzun bir yazı");

  int sayi1 = 50;
  double sayi2 = 52.65;
  print("Aklımdan tuttuğum birinci sayi: " +
      sayi1.toString() +
      " İkinci sayi: " +
      sayi2.toString());
  print("Aklımdan tuttuğum birinci sayi: $sayi1 İkinci sayi:  $sayi2");

  double en = 10;
  double boy = 12;
  print("Eni $en , boyu $boy olan dikdörtgenin alanı ${en * boy} dir");
}

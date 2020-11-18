main(List<String> args) {
  int sayi1 = 5;
  int sayi2 = 4;
  int kucukSayi;

  // if (sayi1 < sayi2) {
  //   kucukSayi = sayi1;
  // } else {
  //   kucukSayi = sayi2;
  // }

  // print("Küçük olan sayi $kucukSayi");

  // sayi1 < sayi2 ? kucukSayi = sayi1 : kucukSayi = sayi2;
  // print("Küçük olan sayi $kucukSayi");

  // kucukSayi = sayi1 < sayi2 ? sayi1 : sayi2;

  // /* null check */
  // String isim = "Nedim";
  // String soyIsim = "YILMAZ";
  // String mesaj;

  // mesaj = isim ?? soyIsim;
  // print("Merhaba $mesaj");

  int sayi = 36;
  int bolum = (sayi / 10).toInt();

  switch (bolum) {
    case 3:
      print(" Sayı 30 dan büyüktür.");
      break;

    case 2:
      print(" Sayı 20 den büyüktür.");
      break;

    case 1:
      print(" Sayı 10 dan büyüktür.");
      break;

    case 0:
      print(" Sayı 10dan küçüktür.");
  }
}

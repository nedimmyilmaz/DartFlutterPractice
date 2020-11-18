main(List<String> args) {
  List<int> numaralar = List.filled(5, null);
  numaralar[0] = 3;
  numaralar[1] = 6;
  numaralar[2] = 7;
  numaralar[3] = 8;

  print("index : " + numaralar[3].toString());
  print("index : " + numaralar[2].toString());

  var isimler = List(3);
  isimler[0] = "nedim";
  isimler[1] = "tugce";

  print("isim " + isimler[1].toString());

  for (String okunanisim in isimler) {
    print("OKunan isim:  $okunanisim");
  }

  for (int okunansayi in numaralar) {
    print("Okunan sayı : $okunansayi");
  }

  for (int i = 0; i < numaralar.length; i++) {
    print("$i indeksindeki sayi : ${numaralar[i]}");
  }

  numaralar.forEach((sayi) => print("kısa kod: $sayi")); //lambda
}

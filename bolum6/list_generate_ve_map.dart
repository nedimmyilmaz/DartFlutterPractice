import 'dart:math';

main(List<String> args) {
  List<int> Numaralar = List.generate(30, (index) => rastgeleSayiOlustur());

  // Numaralar.forEach((element) => print("Öğrenci numaraları: $element"));

  List<Ogrenci> OgrenciListesi =
      Numaralar.map((x) => Ogrenci("$x 'lunun adı: ", x)).toList();
  OgrenciListesi.forEach((ad) {
    print("${ad}");
  });
}

int rastgeleSayiOlustur() {
  int sayi = Random().nextInt(100);

  if (sayi != 0) {
    return sayi;
  } else {
    int yeniSayi = rastgeleSayiOlustur();
    return yeniSayi;
  }
}

class Ogrenci {
  String ad;
  int no;

  Ogrenci(this.ad, this.no);

  @override
  String toString() {
    // TODO: implement toString
    return "$ad, $no";
  }
}

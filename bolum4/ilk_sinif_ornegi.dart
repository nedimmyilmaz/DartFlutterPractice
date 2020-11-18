main(List<String> args) {
  Ogrenci nedim = Ogrenci();
  var hasan = Ogrenci();

  nedim.isim = "NEDİM";
  nedim.ogrNo = 475;
  nedim.yazdir();
}

class Ogrenci {
  int ogrNo;
  String isim;
  bool erkekMi;

  void dersCalis() {}
  void uyu() {}
  void yazdir() {
    print("Adı: ${this.isim} || numarası: ${this.ogrNo}");
  }
}

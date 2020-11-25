main(List<String> args) {
  var d1 = Dikdortgen();
  var k1 = Kare();

  k1.en = 2;
  k1.boy = 3;

  print(" Alan:  ${k1.alanHesapla()}");
  print(" Çevre:  ${k1.cevreHesapla()}");
  k1.mesaj();
}

abstract class Sekil {
  int en;
  int boy;

  void alanHesapla() {}
  void cevreHesapla() {}
  void mesaj() {
    print("test");
  }
}

class Dikdortgen extends Sekil {
  int alanHesapla() {
    return en * boy;
  }

  int cevreHesapla() => 2 * (en + boy);
}

class Kare extends Sekil {
  int alanHesapla() {
    return en * boy;
  }

  int cevreHesapla() {
    return 2 * (en + boy);
  }

  @override
  void mesaj() {
    super.mesaj();
  }
}

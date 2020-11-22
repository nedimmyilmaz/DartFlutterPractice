main(List<String> args) {
  var kopek1 = Kopek();
  kopek1.renk = "siyah";
  kopek1.cins = "Dogo";
  print("Renk : ${kopek1.renk}");
  kopek1.yemek();
  kopek1.havla();

  var kedi1 = Kedi();
  kedi1.yas = 2;
   print("Renk : ${kedi1.renk}");
  kedi1.yemek();
  kedi1.miyav();
}

class Hayvan {
  String renk = "beyaz";
  void yemek() {
    print("Hayvan yemek yiyr");
  }
}

class Kedi extends Hayvan {
  int yas;
  void miyav() {
    print("miyav");
  }

  @override
  void yemek() {
    print("Kedi yemek yiyor");
  }
}

class Kopek extends Hayvan {
  String cins;
  void havla() {
    print("hav");
  }

  @override
  void yemek() {
    print("Köpek yemek yiyor");
  }
}

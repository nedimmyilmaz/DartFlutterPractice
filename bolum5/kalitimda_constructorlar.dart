main(List<String> args) {
  Kopek k1 = new Kopek("dogo", "siyah");

  Kopek k2 = Kopek.isimliKurucu("dalmaçyalı", "siyah-beyaz");
  Kopek k3 = Kopek.isimliKurucuIki("sarı");
}

class Hayvan {
  String renk;
  Hayvan(String renkk) {
    this.renk = renkk;
    print("Hayvan sınıfından bir nesne türetildi rengi de $renk");
  }

  Hayvan.isimliKurucu() {}
}

class Kopek extends Hayvan {
  String cins;
  Kopek(String cinss, String renk) : super(renk) {
    this.cins = cinss;
    print("Köpek sınıfından bir nesne türetildi cinsi  $cins rengi de $renk");
  }

  Kopek.isimliKurucu(String cinss, String renk) : super(renk) {
    this.cins = cinss;
    print("Köpek sınıfından bir nesne türetildi cinsi $cins rengi $renk");
  }

  Kopek.isimliKurucuIki(String renk) : super.isimliKurucu() {
    print(
        "Sadece renk alan ve üst sınıfı parametre almayan yani boş olan bir metot tetiklendi");
  }
}

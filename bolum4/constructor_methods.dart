import 'ilk_sinif_ornegi.dart';

main(List<String> args) {
  Arac arac = Arac(1907, "Merc C180", 2018);
  arac.ekranaYaz();

  Arac arac2 = Arac.plakasiOlmayan("Supra", 2020);
  arac2.ekranaYaz();

  Arac arac3 = Arac.plakasiOlan(1908, "Mitsubishi Evo", 2007);
  arac3.ekranaYaz();
}

class Arac {
  int plakaNo;
  String modelAdi;
  int modelYili;

  Arac(int plakaNo, String modelAdi, int modelYili) {
    print("I appeared becasue of an object created from Arac class.");
    this.plakaNo = plakaNo;
    this.modelAdi = modelAdi;
    this.modelYili = modelYili;
  }

  Arac.plakasiOlmayan(String modelAd, int modelYili) {
    print("I appeared becasue of an object created from Arac class.");
    this.modelAdi = modelAd;
    this.modelYili = modelYili;
  }

  Arac.plakasiOlan(this.plakaNo, this.modelAdi, this.modelYili) {
    // kısa kullanım

    print("I appeared becasue of an object created from Arac class.");
  }

  void ekranaYaz() {
    print(
        "Bu aracın plaka no : ${this.plakaNo}  \nModeli : ${this.modelAdi}  \nYılı : ${this.modelYili}\n");
  }
}

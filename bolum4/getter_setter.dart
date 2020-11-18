main(List<String> args) {
  Ogrenci ogr = Ogrenci.kitabiOlan(1234, "Ali", true);
  ogr.ekranaYaz();

  ogr.ogrNoAtama = -1357;
  print(ogr.orgNoAl);
  ogr.ekranaYaz();
}

class Ogrenci {
  int ogrNo; // _ogrNo yapmak değişkeni private yapar
  String ogrAdi;
  bool kitabiVarMi;

  Ogrenci.kitabiOlan(this.ogrNo, this.ogrAdi, this.kitabiVarMi) {}

  void set ogrNoAtama(int no) {
    if (no <= 0) {
      this.ogrNo = 1;
    } else {
      this.ogrNo = no;
    }
  }

  int get orgNoAl {
    return ogrNo;
  }

  void ekranaYaz() {
    print(
        "Bu öğrencinin nosu : ${this.ogrNo} \nAdı: ${this.ogrAdi} \nKitaba sahip mi: ${this.kitabiVarMi}\n");
  }
}

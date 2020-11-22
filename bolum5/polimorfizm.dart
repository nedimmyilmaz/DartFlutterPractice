import 'dart:async';

main(List<String> args) {
  Er nedim = new Er();
  Er ali = Er();

  Asker mehmet = Asker();
  Yuzbasi korbay = Yuzbasi();

  hazirOl(nedim);
  hazirOl(mehmet);
  hazirOl(korbay);
}

void hazirOl(Asker asker) {
  asker.selamVer();
}

class Asker {
  void selamVer() {
    print("Asker selam verdi");
  }
}

class Er extends Asker {
  @override
  void selamVer() {
    print("Er selam verdi");
  }
}

class Yuzbasi extends Asker {
  @override
  void selamVer() {
    print("Yüzbaşı selam verdi");
  }
}

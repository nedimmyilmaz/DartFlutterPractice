main(List<String> args) {
  Televizyon tv = Televizyon();

  calistir(tv);
}

void calistir(Kumanda k) {
  k.sesAc();
  k.sesiAzalt();
}

class Kumanda {
  void sesAc() {
    print("Kumanda sınıfı, sesi aç");
  }

  void sesiAzalt() {
    print("a  sınıfı, sesi azalt");
  }
}

class Televizyon implements Kumanda {
  void sesAc() {
    print("Televizyon sınıfı, sesi aç");
  }

  void sesiAzalt() {
    print("Televizyon sınıfı, sesi azalt");
  }
}

class SesSistemi implements Kumanda {
  void sesAc() {
    print("Ses Sistemi sınıfı, sesi aç");
  }

  void sesiAzalt() {
    print("Ses Sistemi sınıfı, sesi azalt");
  }
}

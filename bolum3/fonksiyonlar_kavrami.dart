main(List<String> args) {
  cevreHesapla();
  int hesaplananAlan = alanHesapla();

  print("Alan : $hesaplananAlan");
  print("Alan : " + alanHesapla().toString());

  int hesaplananHacim = hacimHesapla(4, 6, 10);

  print("Hacim : $hesaplananHacim");
}

void cevreHesapla() {
  int en = 8, boy = 12;
  int cevre = (en + boy) * 2;
  print("Çevre: $cevre");
}

int alanHesapla() {
  int en = 8, boy = 12, alan = 0;
  alan = en * boy;

  return alan;
}

int hacimHesapla(int en, int boy, int yukseklik) {
  return en * boy * yukseklik;
}

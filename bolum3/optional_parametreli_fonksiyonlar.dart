main(List<String> args) {
  sehirleriYazdir("Ankara", "İzmir", "Berlin");
  print("--------------");

  ulkeleriYazdir("Türkiye", "Almanya");
  print("--------------");

  kitalariYazdir("Asya", kita3: "Amerika", kita2: "Avrupa");
  print("--------------");

  print("Hacim : " + hacmiBul(yukseklik: 5, boy: 4).toString());
}

sehirleriYazdir(String sehir1, String sehir2, String sehir3) {
  print("Şehir 1 : $sehir1");
  print("Şehir 2 : $sehir2");
  print("Şehir 3 : $sehir3");
}

ulkeleriYazdir(String ulke1, String ulke2, [String ulke3]) {
  print("Ülke 1 : $ulke1");

  if (ulke2 != null) print("Ülke 2 : $ulke2");

  if (ulke3 != null) print("Ülke 3 : $ulke3");
}

kitalariYazdir(String kita1, {String kita2, String kita3}) {
  if (kita1 != null) print("Kıta 1 : $kita1");
  if (kita2 != null) print("Kıta 2 : $kita2");
  if (kita3 != null) print("Kıta 3 : $kita3");
}

// int hacmiBul(int en, [int boy = 1, int yukseklik = 1]) => en * boy * yukseklik; //varsayılan değerler atadık
int hacmiBul({int en = 1, int boy = 1, int yukseklik = 1}) =>
    en * boy * yukseklik; //varsayılan değerler atadık
// isteğe bağlı girilebilen parametler tanımladık

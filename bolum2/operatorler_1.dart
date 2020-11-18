main(List<String> args) {
  double sayi1 = 9;
  double sayi2 = 6;

  print("$sayi1 + $sayi2 toplamı ${sayi1 + sayi2}");
  print("$sayi1 - $sayi2 farkı ${sayi1 - sayi2}");
  print("$sayi1 * $sayi2 çarpımı ${sayi1 * sayi2}");
  print("$sayi1 / $sayi2 bölümü ${sayi1 / sayi2}");
  print("$sayi1 % $sayi2 modu ${sayi1 % sayi2}");

  double sayi3 = 5;
  sayi3 = sayi3 + 5; // sayi3 += 5;
  print(sayi3);

  // <, >, <=, >=, ==, !=

// Mantıksal operatörler
// &&, ||, !

  bool kosul1 = true;
  bool kosul2 = false;

  print(kosul1 && kosul2);
  print(kosul1 || kosul2);
}

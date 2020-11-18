import 'dart:math';

void main(List<String> args) {
  sayiTopla();

  int fark = sayiCikar(15, 5);
  print("fark : $fark");

  print("çarpım : " + sayiCarp(12, 6).toString());

  print("maksimum sayı: " + maxBul(10, 9).toString());
  print("minimum sayı: " + minBul(10, 9).toString());
}

sayiTopla() {
  int sayi1 = 10, sayi2 = 5;
  print("toplam : ${sayi1 + sayi2}");
}

int sayiCikar(int s1, int s2) => s1 - s2; // method kısa gösterim

int sayiCarp(int s1, int s2) => s1 * s2;

/*  int maxBul(int s1, s2) {
  if (s1 < s2)
    return s2;
  else
    return s1;
}*/

int maxBul(int s1, s2) => (s1 < s2) ? s2 : s1;

int minBul(int s1, s2) => (s1 < s2) ? s1 : s2;

main(List<String> args) {
  int sayi1 = 12;
  num sayi2 = 18;

  if (sayi1 > sayi2) {
    print("$sayi1 sayısı, $sayi2 sayısından büyüktür");
  } else {
    print("$sayi1 sayısı, $sayi2 sayısından küçüktür");
  }

  if (sayi1 < sayi2) {
    print("$sayi1 sayısı, $sayi2 sayısından küçüktür");
  } else if (sayi2 < sayi1) {
    print("$sayi2 sayısı, $sayi1 sayısından küçüktür");
  } else {
    print("*eşittir*");
  }
  print("**************************************************");

  int not = 75;

  if (not >= 90 && not <= 100) {
    print("Notunuz $not : AA");
  } else if (not >= 80 && not <= 90) {
    print("Notunuz $not : BA");
  } else if (not >= 70 && not <= 80) {
    print("Notunuz $not : BB");
  } else if (not >= 0 && not < 50) {
    print("Notunuz çok düşük");
  } else {
    print("Hatalı değer");
  }
}

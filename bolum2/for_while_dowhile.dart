main(List<String> args) {
  // for (int i = 0; i <= 10; i++) {
  //   if (i % 2 == 0) {
  //     print(i);
  //   }
  // }

  // List isimlerListesi = ["Nedim", "Hasan", "Ali"];
  // for (String gecici in isimlerListesi) {
  //   print("$gecici");
  // }

  // for (int i = 0; i < isimlerListesi.length; i++) {
  //   print("Okunan eleman: " + isimlerListesi[i]);
  // }

  int sayac = 0;
  while (sayac < 3) {
    print("okunan sayaç değeri : $sayac");
    sayac++;
  }

  int sayac2 = 0;
  do {
    print("Okunan sayaç değeri :$sayac2 ");
    sayac2++;
  } while (sayac2 <= 5);

  for (int i = 0; i < 10; i++) {
    if (i > 5) {
      break;
    }
    print("i değeri: $i");
  }

  disDongu:
  for (int i = 1; i <= 3; i++) {
    for (int j = 1; j <= 3; j++) {
      print("$i * $j = ${i * j}");
    }
    if (i == 2) {
      /*break */ continue disDongu;
    }
  }
}

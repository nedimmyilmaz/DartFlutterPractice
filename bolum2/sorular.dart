/**
 * 1.SORU: 3 tane double değişken oluşturup bunların ortalamasını yazdıran programı yaz.
 * 2.SORU: Kenarlarını girdğimiz üçgenin çeşidini yazdıran programı yaz.
 * 3.SORU: Vize ve final notlarını alıp dersi geçip geçmediğini bulan programı yaz.
 * (geçme notu alt değeri = 50, vizenin %40 finalin %60ı alınacak.)
 * 
 * 4.SORU: Kendi adınızı ekrana 5 kere yazdıran programı tüm döngü ifadeleriyle yaz.
 * 5.SORU: 1'den 100'e kadar olan ve 15 ile tam bölünen sayıların karelerini ekrana yaz.
 * 6.SORU: Tanımlanan int bir sayının faktöriyelini bulan uygulamayı yaz.
 * 
 * 
 */
main(List<String> args) {
//CEVAP 1
/** 
  double sayi1 = 15.1, sayi2 = 16.2, sayi3 = 12.5;
  print("Ortalama : ${(sayi1 + sayi2 + sayi3) / 3}");
  */

//CEVAP 2

  /*int kenar1 = 3, kenar2 = 3, kenar3 = 3;

  if ((kenar1 == kenar2) && (kenar1 == kenar3)) {
    print("Eşkenar üçgendir.");
  } else if ((kenar1 != kenar2) && (kenar1 != kenar3) && (kenar2 != kenar3)) {
    print("Çeşitkenar üçgendir.");
  } else {
    print("İkizkenar üçgendir.");
  } */

//CEVAP 3
  /*  int vize = 52, fnal = 45;
  double avg = (vize * 40 / 100) + (fnal * 60 / 100);
  if (avg >= 50) {
    print("Dersten geçtiniz , ortalamanız: $avg");
  } else {
    print("Dersten kaldınız, ortalamanız: $avg");
  }*/

//CEVAP 4

  // String ad = "Nedim YILMAZ";
  // for (int i = 0; i < 5; i++) {
  //   print(ad);
  // }

  // int kontrol = 0;
  // while (kontrol < 5) {
  //   print(ad);
  //   kontrol++;
  // }

  // /*------------------------------ */ print("-------------");

  // int kontrol1 = 0;
  // do {
  //   print(ad);
  //   kontrol1++;
  // } while (kontrol1 < 5);

//CEVAP 5

  // for (int i = 1; i < 100; i++) {
  //   if ((i % 3 == 0) && (i % 5 == 0)) {
  //     print("15 e tam bölünebilen $i nin karesi ${i * i}");
  //   }
  // }

//CEVAP 6
  int sayi = 6;
  int sonuc = 1, sayac = 1;

  while (sayac <= sayi) {
    sonuc = sonuc * sayac;
    sayac++;
  }
  print("girilen $sayi nın faktöriyeli: $sonuc");
}

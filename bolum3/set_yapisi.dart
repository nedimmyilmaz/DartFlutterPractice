main(List<String> args) {
  Set<String> isimler = Set();
  isimler.add("Nedim");
  isimler.add("Ayşe");
  isimler.add("Ali");
  isimler.add("Fatma");
  isimler.add("Fatma");

  if (isimler.contains("Nedim")) {}
  for (String isim in isimler) {
    print("isim : $isim");
  }

  Set<int> numaralar = Set.from([1, 2, 3, 4, 5, 111, 1, 1, 1]);
  List<int> ciftSayilar = [0, 2, 4, 6, 8, 10, 12, 14, 18, 20];

  for (var deger in numaralar) {
    print("değer: $deger ");
  }
  numaralar.clear(); //ilk halini siler
  numaralar.addAll(ciftSayilar);
  for (var deger in numaralar) {
    print("adall dan sonraki değer: $deger ");
  }
}

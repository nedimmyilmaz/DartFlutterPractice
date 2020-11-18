main(List<String> args) {
  List<int> numaralar = List();

  numaralar.add(5);
  numaralar.add(15);
  numaralar.add(95);
  numaralar.add(null);
  numaralar.add(99);

  print("numara : ${numaralar[1]}");
  print("Listedeki eleman sayısı : ${numaralar.length}");

  for (int s in numaralar) {
    print("sayi : $s");
  }

  print("----------------------------------");

  numaralar.remove(15);
  print("Listedeki eleman sayısı : ${numaralar.length}");
  for (int s in numaralar) {
    print("sayi : $s");
  }

  numaralar.removeLast(); //removeAt, removeFirst
  numaralar.forEach((sayi) => print("- $sayi"));

//add ile yeni eleman ekleyebildiğimiz dinamik liste
  List<String> sehirler = ["Ankara", "İzmir", "Gaziantep"];
  sehirler.add("Van");
  sehirler.add("Yozgatt");

  for (String sehirAdi in sehirler) {
    print("şehir : $sehirAdi");
  }
}

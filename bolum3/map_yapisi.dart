main(List<String> args) {
  Map<String, int> sehirTelKodlari = {
    "Ankara": 0312,
    "İstanbul": 0216,
    "Bursa": 0224,
  };

  sehirTelKodlari.forEach((key, value) {
    print("sehir: $key , telefonKodu: $value");
  });

  print("--------------------------");

  Map<String, Object> kisiler = Map(); //Object tüm tipleri kapsar
  kisiler["ad"] = "Nedim";
  kisiler["yas"] = 20;
  kisiler["erkekMi"] = true;

  for (var key in kisiler.keys) {
    print("key : $key");
  }

  for (var key in kisiler.values) {
    print("deger: $key");
  }

  print("--------------------------");

  Object yeniYas = 35;
  kisiler.update("yas", (value) => 35);

  kisiler.forEach((anahtar, deger) => print("key : $anahtar value: $deger"));

  print(kisiler["yas"]);
}

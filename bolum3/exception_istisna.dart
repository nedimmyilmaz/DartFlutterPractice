main(List<String> args) {
  try {
    paraYatir(-12);
  } catch (e) {
    print("Hata : " + e.hataGoster());
  }

  // print("Olası hatanın adı veya sebebi biliniyorsa");
  // try {
  //   int sonuc = 12 ~/ 0;

  //   print("Bölüm : $sonuc");
  // } on IntegerDivisionByZeroException {
  //   print("Bölen 0 olamaz.");
  // }
  // print("\nhatanın sebebi veya adı bilinmiyorsa");
  // try {
  //   int sonuc = 12 ~/ 0;

  //   print("Bölüm : $sonuc");
  // } catch (e, s) {
  //   print("Hata çıktı $e ve stack trace $s");
  // }

  // print("\nFinally bloğu");
  // try {
  //   int sonuc = 12 ~/ 0;

  //   print("Bölüm : $sonuc");
  // } catch (e, s) {
  //   print("Hata çıktı $e ve stack trace $s");
  // } finally {
  //   print("Finally bloğu çalıştı");
  // }
}

paraYatir(int miktar) {
  if (miktar < 0) {
    throw new ParaYatirmaException();
  } else
    print("Hesabınıza $miktar TL para geldi.");
}

class ParaYatirmaException implements Exception {
  String hataGoster() => "Negatif sayı girildi.";
}

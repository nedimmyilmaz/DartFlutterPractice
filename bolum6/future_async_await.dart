import 'dart:async';
import 'dart:io';

main(List<String> args) {
  
  dosyayiGoster();
}

/*
dosyayiGoster() async {
  print("Dosya alındı ve gösterilecek");
  String icerik = await dosyaIndir();
  print(" --> İşte içerik : $icerik");
}
*/

dosyayiGoster() {
 
  Future<String> icerik = dosyaIndir();
  icerik.then((sonuc) => print(" --> İşte içerik : $icerik"));
   print("Dosya alındı ve gösterilecek");
}

Future<String> dosyaIndir() {
  print("Dosya indirme başladı.");

  Future<String> sonuc = Future.delayed(Duration(seconds: 5), () {
    return "işte dosya içeriği";
  });

  print("Dosya indirme tamamlandı.");

  return sonuc;
}

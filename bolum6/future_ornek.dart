import 'dart:math';
import 'dart:async';

main() {
  var random = Random();
  Future<int> future = Future.delayed(Duration(seconds: 3), () {
    if (random.nextBool()) {
      return 100;
    } else {
      throw "BOOM!";
    }
  });

  future.then((value) => print("İşlem başarıyla tamamlandı."),
      onError: (error) {
    print("Hata alındı $error");
  });
}

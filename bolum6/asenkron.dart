import 'dart:math';

main(List<String> args) {
  // errorWhenCompleted();

  // print("Hesaplama başladı");
  // futureOlustur();
  // print("Hesaplama bitti");

  futureAsyncAwait();
}

void errorWhenCompleted() {
  var random = new Random();

  var future = new Future.delayed(Duration(seconds: 1), () {
    if (random.nextBool()) {
      return 100;
    } else
      throw "Hata Var!";
  }).timeout(new Duration(seconds: 20));

  var future2 = future.then(print);
  var future3 = future2.catchError(print);
  var future4 = future3.whenComplete(() {
    print("İşlem hatayla veya başarıyla tamamlandı!");
  });
}

void futureOlustur() {
  new Future(() {
    var sum = 0;
    for (var i = 0; i < 500000; i++) {
      sum += i;
    }
    return sum;
  }).then(print);
}

void futureAsyncAwait() async {
  var fun1 = (int v) async => v + 1;
  var fun2 = (int v) async => v - 1;
  var fun3 = (int v) async => v * 10;

  var value = 10;
  value = await fun1(value);
  value = await fun2(value);
  value = await fun3(value);
  print(value);
}

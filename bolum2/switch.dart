main(List<String> args) {
  String not = "FF";

  switch (not) {
    case "AA":
      print("Notunuz 90 - 100 aralığındadır");
      break;

    case "BA":
      print("Notunuz 80 - 90 aralığındadır");
      break;

    case "BB":
      print("Notunuz 70 - 80 aralığındadır");
      break;

    case "CB":
      print("Notunuz 60-70 aralığındadır");
      break;

    case "CC":
      print("Notunuz 50-60 aralığındadır");
      break;

    case "FF":
      print("Not 50 den düşük");
      break;

    default:
      {
        print("Hatalı değer girildi.");
      }
  }

  int yas = 22;

  switch (yas) {
    case 18:
      print("Yaşınız 18");
      break;

    case 22:
      print("Yaşınız 22");
      break;

    default:
      {
        print("Bilinmeyen dğeer");
      }
  }
}

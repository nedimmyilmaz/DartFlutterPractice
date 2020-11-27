main(List<String> args) {
  Function f1 = (int s1, int s2) {
    int toplam = s1 + s1;
    print(toplam);
  };

  var f2 = (int no) {
    return no * 2;
  };

  f1(2, 1);
  print(f2(5));

  var f3 = (int s3, int s4) => print(s3 + s4);
  f3(3, 3);
}

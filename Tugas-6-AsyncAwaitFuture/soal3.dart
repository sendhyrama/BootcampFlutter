void main(List<String> args) async {
  print("Ready. Sing");
  await Future.delayed(Duration(seconds: 5));
  line();
  await Future.delayed(Duration(seconds: 3));
  line2();
  await Future.delayed(Duration(seconds: 2));
  line3();
  await Future.delayed(Duration(seconds: 1));
  line4();
}

void line() {
  print("pernahkah kau merasa,");
}

void line2() {
  print("pernahkah kau merasa.....");
}

void line3() {
  print("pernahkah kau merasa,");
}

void line4() {
  print("Hatimu hampa, pernahkah kau merasa hati mu kosong....");
}
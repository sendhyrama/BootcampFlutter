void main(List<String> args) {
  print("Life");
  Future.delayed(Duration(milliseconds: 3), () {
    print("never flat");
  });
  print("is");
}

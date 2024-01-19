class Segitiga {
  late double setengah, alas, tinggi;

  Segitiga(double setengah, double alas, double tinggi) {
    this.setengah = setengah;
    this.alas = alas;
    this.tinggi = tinggi;
  }

  double hitungLuas() {
    return setengah * alas * tinggi;
  }
}

void main(List<String> args) {
  double setengah = 0.5;
  double alas = 20.0;
  double tinggi = 30.0;

  Segitiga segitiga = Segitiga(setengah, alas, tinggi);
  double luasSegitiga = segitiga.hitungLuas();

  print("Luas Segitiga: $luasSegitiga");
}
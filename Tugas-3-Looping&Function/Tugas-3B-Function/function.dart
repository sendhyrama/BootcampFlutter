// Soal 1 (Return Value)
String teriak() {
  return "Halo Sanbers!";
}

void main() {
  print(teriak());
}

// Soal 2 (Perkalian)
int kalikan(int num1, int num2) {
  return num1 * num2;
}

void main() {
  var num1 = 12;
  var num2 = 4;
  var hasilKali = kalikan(num1, num2);
  print(hasilKali); // 48
}

// Soal 3 (Kalimat Perkenalan)
String introduce(String name, int age, String address, String hobby) {
  return "Nama saya $name, umur saya $age tahun, alamat saya di $address, dan saya punya hobby yaitu $hobby!";
}

void main() {
  final String name = "Agus";
  final int age = 30;
  final String address = "Jln. Malioboro, Yogyakarta";
  final String hobby = "Gaming";
  final perkenalan = introduce(name, age, address, hobby);
  print(perkenalan);
}

// Soal 4 (Faktorial)
int faktorial(int angka) {
  if (angka <= 0) {
    return 1;
  } else {
    int hasil = 1;
    String proses = "";
    for (int i = angka; i >= 1; i--) {
      hasil *= i;
      if (proses.isNotEmpty) {
        proses += " * ";
      }
      proses += i.toString();
    }
    print("$angka! = $proses");
    return hasil;
  }
}

void main() {
  int angka = 6;
  int hasilFaktorial = faktorial(angka);
  print(hasilFaktorial);
}
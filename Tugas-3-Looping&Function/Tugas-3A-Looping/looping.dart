// Soal 1 (Looping While)
void main() {
  print("LOOPING PERTAMA");
  int i = 2;
  while (i <= 20) {
    print("$i - I love coding");
    i += 2;
  }

  print("LOOPING KEDUA");
  int j = 20;
  while (j >= 2) {
    print("$j - I will become a mobile developer");
    j -= 2;
  }
}

// Soal 2 (Looping For)
void main() {
  for (int i = 1; i <= 20; i++) {
    if (i % 3 == 0 && i % 2 != 0) {
      print("$i - I Love Coding");
    } else if (i % 2 == 0) {
      print("$i - Berkualitas");
    } else {
      print("$i - Santai");
    }
  }
}

// Soal 3 (Persegi Panjang #)
void main() {
  for (int i = 0; i < 4; i++) {
    String row = "";
    for (int j = 0; j < 8; j++) {
      row += "#";
    }
    print(row); // tambahkan baris kosong setelah setiap baris tanda pagar
  }
}

// Soal 4 (Tangga)
void main() {
  for (int i = 1; i <= 7; i++) {
    String row = "";
    for (int j = 1; j <= i; j++) {
      row += "#";
    }
    print(row);
  }
}

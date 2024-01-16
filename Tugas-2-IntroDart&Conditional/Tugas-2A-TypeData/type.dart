// Soal No. 1 (Membuat Kalimat)
void main() {
  var word = 'Dart';
  var second = 'is';
  var third = 'awesome';
  var fourth = 'and';
  var fifth = 'I';
  var sixth = 'love';
  var seventh = 'it!';
  
  print(word + " " + second + " " + third + " " + fourth + " " + fifth + " " + sixth + " " + seventh);
}

// Soal No. 2 (Mengurai Kalimat)
void main() {
  var sentence = "I am going to be Flutter Developer";

  var words = sentence.split(' ');

  var firstWord = words[0];
  var secondWord = words[1];
  var thirdWord = words[2];
  var fourthWord = words[3];
  var fifthWord = words[4];
  var sixthWord = words[5];
  var seventhWord = words[6];

  print('First Word: ' + firstWord);
  print('Second Word: ' + secondWord);
  print('Third Word: ' + thirdWord);
  print('Fourth Word: ' + fourthWord);
  print('Fifth Word: ' + fifthWord);
  print('Sixth Word: ' + sixthWord);
  print('Seventh Word: ' + seventhWord);
}

// Soal No. 3 (I/O)
import 'dart:io';

void main(List<String> args) {
  print("masukan nama depan:");
  String? inputFirstName = stdin.readLineSync()!;
  print("masukan nama belakang:");
  String? inputLastName = stdin.readLineSync()!;

  String fullName = inputFirstName + " " + inputLastName;
  print("nama lengkap anda adalah: $fullName");
}

// Soal No. 4 (Math Operation)
void main(List<String> args) {
  int a = 5;
  int b = 10;

  int perkalian = a * b;
  int penambahan = a + b;
  int pengurangan = a - b;
  double pembagian = a / b;

  print("perkalian: $perkalian");
  print("pembagian: $pembagian");
  print("penambahan: $penambahan");
  print("pengurangan: $pengurangan");
}
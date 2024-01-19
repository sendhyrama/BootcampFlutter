import 'lingkaran.dart';

void main(List<String> args) {
  Lingkaran lingkaran = Lingkaran();
  
  lingkaran.jariJari = -7;
  print("Luas Lingkaran input nilai (-): ${lingkaran.luas}");
  
  lingkaran.jariJari = 5;
  print("Luas Lingkaran input nilai (+): ${lingkaran.luas}");
}
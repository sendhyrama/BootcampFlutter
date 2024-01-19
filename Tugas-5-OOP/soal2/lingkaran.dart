import 'dart:math';

class Lingkaran {
  double radius = 0;
  
  set jariJari(double jariJari) {
    if (jariJari < 0) {
      radius = -jariJari;
    } else {
      radius = jariJari;
    }
  }
  
  double get luas {
    return pi * pow(radius, 2);
  }
}
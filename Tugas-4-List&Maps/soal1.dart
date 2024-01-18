// Soal 1 (Range)
void main() {
  print(range(1, 10));
  print(range(11, 18)); 
}

List<int> range(int startNum, int finishNum) {
  List<int> numbers = [];
  if (startNum <= finishNum) {
    for (int i = startNum; i <= finishNum; i++) {
      numbers.add(i);
    }
  } else {
    for (int i = startNum; i >= finishNum; i--) {
      numbers.add(i);
    }
  }
  return numbers;
}
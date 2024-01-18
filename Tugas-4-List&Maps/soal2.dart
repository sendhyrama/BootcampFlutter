// Soal 2 (Range with Step)
void main() {
  print(rangeWithStep(1, 10, 2)); // [1, 3, 5, 7, 9]
  print(rangeWithStep(11, 23, 3)); // [11, 14, 17, 20, 23]
  print(rangeWithStep(5, 2, 1)); // [5, 4, 3, 2]
}

List<int> rangeWithStep(int startNum, int finishNum, int step) {
  List<int> numbers = [];
  if (startNum <= finishNum) {
    for (int i = startNum; i <= finishNum; i += step) {
      numbers.add(i);
    }
  } else {
    for (int i = startNum; i >= finishNum; i -= step) {
      numbers.add(i);
    }
  }
  return numbers;
}
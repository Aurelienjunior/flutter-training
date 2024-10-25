void main() {
  List<int> integers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  int sum = 0;
  ;
  print(integers);
  for (int number in integers) {
    sum += number;
  }

  for (int index = 0; index < integers.length; index++) {
    if (integers[index] <= integers.length) {
      print(index);
    }
  }
  print(sum);
}

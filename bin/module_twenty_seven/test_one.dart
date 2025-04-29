import 'dart:io';

bool isConsecutive(List<int> arr) {
  if (arr.isEmpty) return false;

  Set<int> uniqueNumbers = arr.toSet();
  if (uniqueNumbers.length != arr.length) return false;

  int minValue = arr.reduce((a, b) => a < b ? a : b);
  int maxValue = arr.reduce((a, b) => a > b ? a : b);

  return (maxValue - minValue + 1) == arr.length;
}

void main() {
  int n = int.parse(stdin.readLineSync()!);
  if (n == 0) {
    print(false);
    return;
  }

  List<int> arr = stdin.readLineSync()!
      .split(' ')
      .map(int.parse)
      .toList();

  print(isConsecutive(arr));
}

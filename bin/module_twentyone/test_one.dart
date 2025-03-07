import 'dart:io';

void main() {

  String? nInput = stdin.readLineSync();
  if (nInput == null || nInput.trim().isEmpty) {
    print("Invalid input for N");
    return;
  }
  int? N = int.tryParse(nInput.trim());
  if (N == null) {
    print("Invalid number format for N");
    return;
  }


  String? numbersInput = stdin.readLineSync();
  if (numbersInput == null || numbersInput.trim().isEmpty) {
    print("Invalid input for numbers");
    return;
  }

  List<int>? numbers = numbersInput
      .trim()
      .split(' ')
      .map((e) => int.tryParse(e) ?? -1)
      .toList();

  if (numbers.contains(-1)) {
    print("Invalid number format in the list");
    return;
  }


  Map<int, int> frequency = {};
  List<int> order = [];

  for (int num in numbers) {
    if (!frequency.containsKey(num)) {
      order.add(num);
    }
    frequency[num] = (frequency[num] ?? 0) + 1;
  }


  order.sort((a, b) {
    int freqCompare = frequency[a]!.compareTo(frequency[b]!);
    return freqCompare != 0 ? freqCompare : numbers.indexOf(a).compareTo(numbers.indexOf(b));
  });


  print(order.length);
  for (int num in order) {
    print('$num ${frequency[num]}');
  }
}

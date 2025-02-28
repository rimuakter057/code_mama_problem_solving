import 'dart:io';

void main() {
  // প্রথম ইনপুট: সংখ্যা N
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

  // দ্বিতীয় ইনপুট: N সংখ্যক পূর্ণসংখ্যা
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

  // যদি ইনপুটে কোনো ভুল সংখ্যা থাকে (-1 হলে সেটি ভুল ছিল)
  if (numbers.contains(-1)) {
    print("Invalid number format in the list");
    return;
  }

  // ফ্রিকোয়েন্সি গণনা
  Map<int, int> frequency = {};
  List<int> order = [];

  for (int num in numbers) {
    if (!frequency.containsKey(num)) {
      order.add(num);
    }
    frequency[num] = (frequency[num] ?? 0) + 1;
  }

  // ফ্রিকোয়েন্সি অনুযায়ী সাজানো
  order.sort((a, b) {
    int freqCompare = frequency[a]!.compareTo(frequency[b]!);
    return freqCompare != 0 ? freqCompare : numbers.indexOf(a).compareTo(numbers.indexOf(b));
  });

  // আউটপুট
  print(order.length);
  for (int num in order) {
    print('$num ${frequency[num]}');
  }
}

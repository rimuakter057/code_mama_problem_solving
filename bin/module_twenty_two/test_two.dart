import 'dart:io';

void main() {

  List<String> input = stdin.readLineSync()!.split(' ');

  List<int> numbers = input.map(int.parse).toList();

  int count = numbers.where((num) => num % 2 == 0).length;

  print(count);
}

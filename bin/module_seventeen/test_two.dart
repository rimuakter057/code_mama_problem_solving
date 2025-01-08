import 'dart:io';

void main() {
  String input = stdin.readLineSync() ?? '';

  List<String> number = input.split(' ');
  int arraySize = int.parse(number[0]);

  int truenumber = 0;

  for (int i = 1; i <= arraySize; i++) {
    if (int.parse(number[i]) == 1) truenumber++;
  }
  print(truenumber);
}
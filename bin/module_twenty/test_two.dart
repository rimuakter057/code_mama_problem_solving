import 'dart:io';

void main() {
  List<int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int N = input[0];
  int X = input[1];

  int totalTime = (N * X) + (N * (N + 1)) ~/ 2 - N;
  print(totalTime);
}

import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);
  String S = stdin.readLineSync()!;

  int removeCount = 0;


  for (int i = 1; i < N; i++) {
    if (S[i] == S[i - 1]) {
      removeCount++;
    }
  }

  print(removeCount);
}
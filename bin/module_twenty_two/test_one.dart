import 'dart:io';

void main() {
  List<String> input = stdin.readLineSync()!.split(' ');
  int A = int.parse(input[0]);
  int B = int.parse(input[1]);

  if (A > B) {
    int temp = A;
    A = B;
    B = temp;
  }

  int sum = 0;
  for (int i = A; i <= B; i++) {
    if (i % 2 == 1) {
      sum += i;
    }
  }

  print(sum);
}

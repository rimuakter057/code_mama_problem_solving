import 'dart:io';

void main() {

  List<String> input = stdin.readLineSync()!.split(" ");

  int N = int.parse(input[0]);
  int A = int.parse(input[1]);
  int B = int.parse(input[2]);


  if (A + B <= N) {
    print("Yes");
  } else {
    print("No");
  }
}
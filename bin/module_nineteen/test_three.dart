import 'dart:io';

void main() {

  List<String> input = stdin.readLineSync()!.split(" ");
  int W = int.parse(input[0]);
  int S = int.parse(input[1]);
  int C = int.parse(input[2]);


  if (W >= 200 && W <= 300 && S >= 50 && C >= 150) {
    print("Yes");
  } else {
    print("No");
  }
}
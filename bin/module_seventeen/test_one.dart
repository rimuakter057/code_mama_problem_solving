import 'dart:io';

void main() {
  String input = stdin.readLineSync()!.trim();

  bool isFunny = true;
  for (int i = 0; i < input.length; i++) {
    if (i % 2 == 0) {
      if (input[i] != input[i].toLowerCase() || !RegExp(r'[a-z]').hasMatch(input[i])) {
        isFunny = false;
        break;
      }
    } else {
      if (input[i] != input[i].toUpperCase() || !RegExp(r'[A-Z]').hasMatch(input[i])) {
        isFunny = false;
        break;
      }
    }
  }

  print(isFunny ? "Yes" : "No");
}
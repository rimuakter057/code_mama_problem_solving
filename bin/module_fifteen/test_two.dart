
import 'dart:io';

String transformString(String input) {
  String result = "";

  for (int i = 0; i < input.length; i++) {
    result += input[i];


    if ((i + 1) % 2 == 0 && i != input.length - 1) {
      result += 'x';
    }
  }

  return result;
}

void main() {

  String? userInput = stdin.readLineSync();
  if (userInput != null && userInput.isNotEmpty) {
    String output = transformString(userInput);
    print(output);
  } else {
    print("Please enter a valid string.");
  }
}
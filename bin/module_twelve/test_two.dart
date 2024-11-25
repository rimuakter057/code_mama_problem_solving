import 'dart:io';

void main() {
  // Write your dart code from here

  String? userInput = stdin.readLineSync();
  if (userInput != null && userInput.isNotEmpty) {
    String output = transformString(userInput);
    print(output);
  } else {
    print("Please enter a valid string.");
  }
}

String transformString(String input) {
  String result = "";

  for (int i = 0; i < input.length; i++) {

    if ((i + 1) % 3 == 0) {
      result += input[i].toUpperCase();
    } else {
      result += input[i];
    }
  }

  return result;
}
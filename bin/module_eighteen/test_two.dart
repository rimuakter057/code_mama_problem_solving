
import 'dart:io';

void main() {
  // ইনপুট নেওয়া
  String equation = stdin.readLineSync()!.trim();

  // স্ট্রিং থেকে প্রাসঙ্গিক অংশগুলো বের করা
  int num1 = int.parse(equation[0]); // প্রথম সংখ্যা
  String operator = equation[2]; // অপারেটর
  int num2 = int.parse(equation[4]); // শেষ সংখ্যা

  // ফলাফল নির্ণয়
  int result = 0;

  if (operator == '+') {
    result = num1 + num2;
  } else if (operator == '-') {
    result = num1 - num2;
  } else if (operator == '*') {
    result = num1 * num2;
  } else if (operator == '/') {
    if (num2 != 0) {
      result = num1 ~/ num2; // ডিভিশনের জন্য ইন্টিজার আউটপুট
    } else {
      print("Error: Division by zero is not allowed.");
      return;
    }
  } else {
    print("Invalid operator.");
    return;
  }

  // আউটপুট
  print(result);
}
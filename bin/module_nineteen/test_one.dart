import 'dart:io';

void main() {
  // ইউজার ইনপুট নেওয়া
  List<String> input = stdin.readLineSync()!.split(" ");

  int N = int.parse(input[0]); // মোট সময়
  int A = int.parse(input[1]); // প্রথম অ্যাসাইনমেন্টের সময়
  int B = int.parse(input[2]); // দ্বিতীয় অ্যাসাইনমেন্টের সময়

  // শর্ত চেক করা
  if (A + B <= N) {
    print("Yes");
  } else {
    print("No");
  }
}
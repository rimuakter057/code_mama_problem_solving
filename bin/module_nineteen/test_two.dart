import 'dart:io';

void main() {
  int N = int.parse(stdin.readLineSync()!);  // ইনপুটে N সংখ্যা
  String S = stdin.readLineSync()!;  // টাইলের রঙের স্ট্রিং

  int removeCount = 0;

  // স্ট্রিং এর পরপর দুটি টাইলের রঙ চেক করা
  for (int i = 1; i < N; i++) {
    if (S[i] == S[i - 1]) {
      removeCount++;  // একই রঙ থাকলে একটি টাইল সরানো হবে
    }
  }

  print(removeCount);  // কতটি টাইল সরাতে হবে তা প্রিন্ট করা
}
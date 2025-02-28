import 'dart:io';

void main() {
  // ইনপুট নেওয়া
  String? S = stdin.readLineSync();

  if (S == null || S.isEmpty) {
    print(0);
    return;
  }

  // স্বতন্ত্র অক্ষরের সংখ্যা গণনা (Set ব্যবহার করে)
  Set<String> uniqueChars = S.split('').toSet();

  // আউটপুট প্রিন্ট
  print(uniqueChars.length);
}

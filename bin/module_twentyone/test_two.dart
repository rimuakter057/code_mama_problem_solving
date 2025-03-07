import 'dart:io';

void main() {

  String? S = stdin.readLineSync();

  if (S == null || S.isEmpty) {
    print(0);
    return;
  }


  Set<String> uniqueChars = S.split('').toSet();

  print(uniqueChars.length);
}

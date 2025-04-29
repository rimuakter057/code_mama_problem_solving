import 'dart:io';

bool isValidCode(String s) {
  if (s.length != 7) return false;
  if (!s.startsWith('#')) return false;

  for (int i = 1; i < 7; i++) {
    var ch = s[i];
    if (!(ch.codeUnitAt(0) >= '0'.codeUnitAt(0) && ch.codeUnitAt(0) <= '9'.codeUnitAt(0)) &&
        !(ch.codeUnitAt(0) >= 'A'.codeUnitAt(0) && ch.codeUnitAt(0) <= 'F'.codeUnitAt(0)) &&
        !(ch.codeUnitAt(0) >= 'a'.codeUnitAt(0) && ch.codeUnitAt(0) <= 'f'.codeUnitAt(0))) {
      return false;
    }
  }

  return true;
}

void main() {
  String s = stdin.readLineSync()!;
  print(isValidCode(s));
}

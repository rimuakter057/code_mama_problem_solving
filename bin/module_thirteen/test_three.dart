import 'dart:io';

String minimizeNumber(String s, int k) {
  List<String> digits = s.split('');
  int changes = 0;

  if (digits[0] != '1') {
    digits[0] = '1';
    changes++;
  }

  for (int i = 1; i < digits.length && changes < k; i++) {
    if (digits[i] != '0') {
      digits[i] = '0';
      changes++;
    }
  }

  return digits.join('');
}

void main() {
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print('Invalid input!');
    return;
  }

  List<String> inputs = input.split(' ');
  if (inputs.length != 2) {
    print('Invalid input format!');
    return;
  }

  String s = inputs[0];
  int? k = int.tryParse(inputs[1]);

  if (s.length < 10 || s.length > 100) {
    print('Error: Length of S must be between 10 and 100.');
    return;
  }

  if (k == null || k < 1 || k > s.length) {
    print('Error: K must be between 1 and the length of S.');
    return;
  }

  String result = minimizeNumber(s, k);
  print('Min = $result');
}
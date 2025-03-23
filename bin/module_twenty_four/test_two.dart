import 'dart:io';

int evaluatePrefix(String expression) {
  List<int> stack = [];


  for (int i = expression.length - 1; i >= 0; i--) {
    String ch = expression[i];

    if (ch == ' ' || ch == '(' || ch == ')') {
      continue;
    }

    if (isDigit(ch)) {
      stack.add(int.parse(ch));
    } else {

      if (stack.length < 2) {
        throw Exception("Invalid Expression");
      }
      int operand1 = stack.removeLast();
      int operand2 = stack.removeLast();
      int result = applyOperator(ch, operand1, operand2);
      stack.add(result);
    }
  }

  if (stack.length != 1) {
    throw Exception("Invalid Expression");
  }
  return stack[0];
}

bool isDigit(String ch) {
  return RegExp(r'^\d$').hasMatch(ch);
}

int applyOperator(String op, int a, int b) {
  switch (op) {
    case '+':
      return a + b;
    case '-':
      return a - b;
    case '*':
      return a * b;
    case '/':
      if (b == 0) {
        throw Exception("Division by zero");
      }
      return a ~/ b;
    default:
      throw Exception("Unsupported operator: $op");
  }
}

void main() {
  String? input = stdin.readLineSync();

  if (input == null || input.isEmpty) {
    print("Invalid input");
    return;
  }

  try {
    int result = evaluatePrefix(input);
    print(result);
  } catch (e) {
    print("Error: $e");
  }
}
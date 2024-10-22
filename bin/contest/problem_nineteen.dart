import 'dart:io';
void main(){
  List <String> input = stdin.readLineSync()!.split(' ');

  double num1 = double.parse(input[0]);
  double num2 =  double.parse(input[1]);
  double num3 =  double.parse(input[2]);
  double average = (num1+num2+num3)/3;
  print("Average: ${average.toStringAsFixed(2)}");
}
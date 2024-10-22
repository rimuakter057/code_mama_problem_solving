import 'dart:io';

void main (){
  double r = double.parse(stdin.readLineSync()!);
  double pi = 3.14;
  double area= pi*r*r;
  print("The area of the circle is ${area.toStringAsFixed(2)} square units.");
}
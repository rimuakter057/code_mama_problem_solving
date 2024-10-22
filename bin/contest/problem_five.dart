import 'dart:io';
void main(){
  List <String> input = stdin.readLineSync()!.split(' ');
  int  num1 = int.parse(input[0]);
  int  num2 = int.parse(input[1]);
 int difference=num1-num2;
 print(difference);
}
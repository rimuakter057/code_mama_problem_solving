import 'dart:io';
import 'dart:math';
void main(){
  List <String> input1 = stdin.readLineSync()!.split(' ');
  double x1 = double.parse(input1[0]);
  double y1 = double.parse(input1[1]);
  List <String> input2 = stdin.readLineSync()!.split(' ');
  double x2 = double.parse(input2[0]);
  double y2 = double.parse(input2[1]);

  double distance = sqrt(pow((x2-x1),2) + pow((y2-y1),2));
 print("Distance: ${distance.toStringAsFixed(2)}");
}
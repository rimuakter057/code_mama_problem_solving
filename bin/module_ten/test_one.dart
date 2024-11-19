
import 'dart:io';
void main (){
  List <String> input = stdin.readLineSync()!.split(' ');
  int S = int.parse(input[0]);
  int E = int.parse(input[1]);
  int duration;
 if (E==S){
   duration = 24;
 }else if (E>S){
   duration = E-S;
 }else {
   duration = (24-S)+E;
 }
  print(duration);
}
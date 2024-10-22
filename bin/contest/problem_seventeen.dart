import 'dart:io';
void main (){
  int input = int.parse(stdin.readLineSync()!);
if (input<0){
  print("$input is a negative number.");
}else if(input>0){
  print("$input is a positive number.");
  }else{
  print("The number is zero.");
}
}
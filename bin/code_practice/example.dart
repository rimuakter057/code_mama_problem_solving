import 'dart:io';

void main(){
 int screenWidth = int.parse(stdin.readLineSync()!);
  int tableWidth = 300;
  int remainingSpace  = (screenWidth- tableWidth)~/2;
  print(remainingSpace );
}

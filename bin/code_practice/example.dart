import 'dart:io';

/*
void main() {
int IW=int.parse(stdin.readLineSync()!);
int containerWidth = 1000;
int remainingSpace = containerWidth - IW;
int margin;
remainingSpace <=0? margin= 0 : margin = remainingSpace ~/2;
print(margin);
}*/

/*

void main (){
  List <int> input = stdin.readLineSync()!.split(' ').map(int.parse).toList();
  int l1 = input[0];
  int r1 = input[1];
  int l2 = input[2];
  int r2 = input[3];

  for (int i =l1; i<l2; i++){
    stdout.write('$i ');
  }
  for (int i=r2+1; i<=r1; i++){
    stdout.write('$i ');
  }

}
*/

void main(){

 int screenWidth = int.parse(stdin.readLineSync()!);
  int tableWidth = 300;
  int remainingSpace  = (screenWidth- tableWidth)~/2;
  print(remainingSpace );
}


import 'dart:io';
void main() { String number = stdin.readLineSync() ?? '';
  List<String> num = number.split(' ');
  String S = stdin.readLineSync() ?? '';
  int A = int.parse(num[0]); int B = int.parse(num[1]);
  int C = int.parse(num[2]);
  for(int i=0; i<S.length; i++){ if(S[i] == 'A') stdout.write("$C ");
    else if(S[i] == 'B') stdout.write("$A ");
  else stdout.write("$B "); } }



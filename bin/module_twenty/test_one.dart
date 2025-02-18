import 'dart:io';

void main() {
  int n = int.parse(stdin.readLineSync()!);
  List<String> arr = [];
  List<String> outputs = [];

  for(int i = 0; i < n; i++){
    String line = stdin.readLineSync()!;
    arr.add(line);
  }

  for(int i = 0; i < n-2; i++){
    if(arr[i][0] == "F" && arr[i+1][0] == "F" && arr[i+2][0] == "T"){
      outputs.add(arr[i] +" "+arr[i+1] + " "+arr[i+2]);
    }
  }

  print(outputs.length);

  for(int i = 0; i < outputs.length; i++){
    print(outputs[i]);
  }
}
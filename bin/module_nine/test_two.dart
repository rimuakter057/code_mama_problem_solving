import 'dart:io';

void main (){
  Map <int, String> fruitNames = {
    31231: 'Banana',
    43861: 'Elderberry',
    82678: 'Honeydew Melon',
    23456:'Apple',
    78901:'Mango',
    98765:'Nectarine',
    45678:'Orange',
    67890:'Raspberry',
    21098: 'Tangerine'
  };
  int fruitId = int.parse(stdin.readLineSync()!);
  print(fruitNames[fruitId]);
}

import 'dart:io';
void main (){
  Map <int, int > productPrices = {
    101: 10,
    202: 25,
    303: 5,
  };

  List <String> input = stdin.readLineSync()!.split(' ');
  int productId = int.parse(input[0]);
  int quantity = int.parse(input[1]);

  int totalCost = productPrices[productId]!*quantity;

  print(totalCost);
}



import 'dart:io';

void main (){
  String input= stdin.readLineSync()!.toLowerCase();
  List <String> vowels = ['a','e','i','o','u'];
  bool containsVowel = false;
  for (int i=0; i < input.length; i++){
    if (vowels.contains(input[i])){
      containsVowel =true;
      break;
    }
  }

  if (containsVowel){
    print("The string contains a vowel.");
  }else{
    print("The string does not contain any vowel.");
  }
}





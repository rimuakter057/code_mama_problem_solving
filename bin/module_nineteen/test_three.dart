import 'dart:io';

void main() {
  // ইনপুট নিয়ে আসা
  List<String> input = stdin.readLineSync()!.split(" ");
  int W = int.parse(input[0]); // কেকের ওজন
  int S = int.parse(input[1]); // চিনির পরিমাণ
  int C = int.parse(input[2]); // ক্যালোরি

  // শর্ত চেক করা
  if (W >= 200 && W <= 300 && S >= 50 && C >= 150) {
    print("Yes");
  } else {
    print("No");
  }
}
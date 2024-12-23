import 'dart:io';

void main() {
  String input = stdin.readLineSync() ?? '';

  List<String> parts = input.split(' ');

  int wheels = int.parse(parts[0]);
  int bodies = int.parse(parts[1]);
  int figures = int.parse(parts[2]);

  int carsFromWheels = wheels ~/ 4;
  int carsFromFigures = figures ~/ 2;

  if (carsFromWheels < carsFromFigures && carsFromWheels < bodies)
    print(carsFromWheels);
  else if (carsFromFigures < bodies)
    print(carsFromFigures);
  else
    print(bodies);
}

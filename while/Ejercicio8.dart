import 'dart:io';
import 'dart:math';

void main() {
  var intValue = Random().nextInt(100);
  var intValue2 = Random().nextInt(100);

  var suma = intValue + intValue2;

  print("Digita la suma de $intValue + $intValue2");

  var res = int.parse(stdin.readLineSync().toString());

  while (res != suma) {
    print("Digita la suma de  + $intValue + $intValue2");
    res = int.parse(stdin.readLineSync().toString());
  }
}

import 'dart:io';
import 'dart:math';

void main() {
  print("Digite un numero ");

  var n1 = int.parse(stdin.readLineSync().toString());

  print("Digite otro numero ");

  var n2 = int.parse(stdin.readLineSync().toString());

  for (var i = 1; i <= n2; i++) {

    if (i % 3 == 0) {
      print(i);
    }
  }
}

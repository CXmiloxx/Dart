import 'dart:io';

void main() {
  print("Digite la distancia recorrida en millas marinas.");

  int distancia = int.parse(stdin.readLineSync().toString());

  var metro = distancia * 1852;

  print("$distancia millas equivalen a $metro metros");

}

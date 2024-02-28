import 'dart:io';
import 'dart:math';

void main() {
  print("digita la distancia recorrida");
  double pasaje = double.parse(stdin.readLineSync().toString());

  print("digita el valor de cada pasaje");
  double nPersonas = double.parse(stdin.readLineSync().toString());

  var ganancia = pasaje * nPersonas;

  print("La ganancia total del colectivo es de : $ganancia ");
}

import 'dart:io';
import 'dart:math';

void main() {
  print("Digita tu capital inicial");

  var capital = int.parse(stdin.readLineSync().toString());

  var interes = capital * 0.5;
  var cap = capital * 2;
  var capitalFinal = capital + interes;

  while (capital != cap) {
    capitalFinal;
  }
}

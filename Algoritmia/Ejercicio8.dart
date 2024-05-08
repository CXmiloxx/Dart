import 'dart:io';

void main() {
  print("digita la cantidad de de estadia");

  var cHoras = int.parse(stdin.readLineSync().toString());

  var hora = cHoras - 1;
  var total = (hora * 800) + 1000;

  print("el valor del estacionamiento es de : $total");
}

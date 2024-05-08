import 'dart:io';

void main() {
  print("Hora de entrada: ");

  var hEntrada = int.parse(stdin.readLineSync().toString());

    print("Hora de Salida");

  var hSalida = int.parse(stdin.readLineSync().toString());
  var hora = hEntrada - 1;
  var total = (hora * 600) + 1000;




  print("el valor del estacionamiento es de : $total");
}

import 'dart:io';

void main() {

  print('Ingrese el número de pasajeros: ');
  int numeroPasajeros = 
  int.parse(stdin.readLineSync().toString());

  print('Ingrese el valor del pasaje: ');
  double valorPasaje = 
  double.parse(stdin.readLineSync().toString());

  double ganancia;

  if (numeroPasajeros < 300) {
    ganancia = 0.0; 
  } else if (numeroPasajeros <= 500) {
    ganancia = 0.20 * (numeroPasajeros * valorPasaje); 
  } else {
    ganancia = 0.30 * (numeroPasajeros * valorPasaje);
  }

  print('El conductor debe entregar \$$ganancia al dueño del bus.');
}

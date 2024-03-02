import 'dart:io';

void main() {

  print('Ingrese la cantidad de piezas a procesar: ');
  int cantidadPiezas = 
  int.parse(stdin.readLineSync().toString());

  int piezasAptas = 0;
  int i = 1;

  while (i <= cantidadPiezas) {
    print('Ingrese la longitud de la pieza $i: ');
    double longitudPieza = 
    double.parse(stdin.readLineSync().toString());

    if (longitudPieza >= 1.20 && longitudPieza <= 1.30) {
      piezasAptas++;
    }

    i++;
  }

  print('Cantidad de piezas aptas: $piezasAptas');
}

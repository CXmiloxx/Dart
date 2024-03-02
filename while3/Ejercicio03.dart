import 'dart:io';

void main() {

  print('Ingrese la cantidad de alturas a procesar: ');
  int cantidadAlturas = 
  int.parse(stdin.readLineSync().toString());

  double sumaAlturas = 0;
  int i = 1;

  while (i <= cantidadAlturas) {
    print('Ingrese la altura de la persona $i en metros: ');
    double altura = 
    double.parse(stdin.readLineSync().toString());

    sumaAlturas += altura;

    i++;
  }

  double alturaPromedio = sumaAlturas / cantidadAlturas;
  print('La altura promedio de las personas es: $alturaPromedio metros');
}

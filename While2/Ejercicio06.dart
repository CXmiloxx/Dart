import 'dart:io';

void main() {

  print('Ingrese el primer número entero: ');
  int numero1 = 
  int.parse(stdin.readLineSync().toString());

  print('Ingrese el segundo número entero: ');
  int numero2 = 
  int.parse(stdin.readLineSync().toString());

  if (numero2 <= numero1) {
    print('El segundo número debe ser mayor que el primero. Reinicie el programa.');
    return;
  }

  int cantidadNumeros = 0;

  while (true) {
    print('Ingrese un número entre $numero1 y $numero2 (o un número fuera de rango para terminar): ');
    int numeroIngresado = 
    int.parse(stdin.readLineSync().toString());

    if (numeroIngresado >= numero1 && numeroIngresado <= numero2) {
      cantidadNumeros++;
    } else {
      break; 
    }
  }

  print('Se escribieron $cantidadNumeros números entre $numero1 y $numero2.');
}

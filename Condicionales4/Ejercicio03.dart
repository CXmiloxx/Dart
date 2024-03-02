import 'dart:io';

void main() {
  
  print('Ingrese el primer lado del triángulo: ');
  double lado1 = double.parse(stdin.readLineSync().toString());

  print('Ingrese el segundo lado del triángulo: ');
  double lado2 = double.parse(stdin.readLineSync().toString());

  print('Ingrese el tercer lado del triángulo: ');
  double lado3 = double.parse(stdin.readLineSync().toString());

  if (lado1 == lado2 && lado2 == lado3) {
    print('Triángulo equilátero. Tres lados iguales.');
  } else if (lado1 == lado2 || lado1 == lado3 || lado2 == lado3) {
    print('Triángulo isósceles. Dos lados iguales.');
  } else {
    print('Triángulo escaleno. Tres lados desiguales.');
  }
}

import 'dart:io';

void main() {
  double numero1, numero2, numero3;

  print('Ingrese el primer número: ');
  numero1 = double.parse(stdin.readLineSync().toString());

  print('Ingrese el segundo número: ');
  numero2 = double.parse(stdin.readLineSync().toString());

  print('Ingrese el tercer número: ');
  numero3 = double.parse(stdin.readLineSync().toString());

  if (numero1 > numero2) {
    double temp = numero1;
    numero1 = numero2;
    numero2 = temp;
  }

  if (numero2 > numero3) {
    double temp = numero2;
    numero2 = numero3;
    numero3 = temp;
  }

  if (numero1 > numero2) {
    double temp = numero1;
    numero1 = numero2;
    numero2 = temp;
  }

  print('Números ordenados de menor a mayor: $numero1, $numero2, $numero3');
}

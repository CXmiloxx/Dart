import 'dart:io';

void main() {
  print("Ingrese la cantidad de números impares que desea sumar: ");
  int cantidad = int.parse(stdin.readLineSync()!);

  int suma = sumaPrimerosImpares(cantidad);
  print("La suma de los $cantidad primeros números impares es: $suma");
}

int sumaPrimerosImpares(int n) {
  int suma = 0;
  int contador = 0;
  int numero = 1;

  while (contador < n) {
    if (numero % 2 != 0) {
      suma += numero;
      contador++;
    }
    numero++;
  }

  return suma;
}

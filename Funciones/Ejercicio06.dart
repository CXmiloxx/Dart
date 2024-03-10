import 'dart:io';

void main() {
  print("Digite el primer numero");
  var numero1 = int.parse(stdin.readLineSync()!);

  parOInpar(numero1);
  positivoONegativo(numero1);
}

void parOInpar(int numero1) {
  if (numero1 % 2 == 0) {
    print("$numero1 es par");
  } else {
    print("$numero1 es impar");
  }
}

void positivoONegativo(int numero1) {
  if (numero1 >= 0) {
    print("$numero1 es positivo");
  } else {
    print("$numero1 es negativo");
  }
}

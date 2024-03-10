import 'dart:io';

void main() {
  print("Digite el primer numero");
  var numero1 = int.parse(stdin.readLineSync()!);

  print("Digite el segundo numero");
  var numero2 = int.parse(stdin.readLineSync()!);

  revertirNumero(numero1, numero2);

  print("Después del intercambio:");
  print("numero1: $numero1, numero2: $numero2");
}

void revertirNumero(int n1, int n2) {
  int temp = n1;
  n1 = n2;
  n2 = temp;
}

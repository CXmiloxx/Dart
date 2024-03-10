import 'dart:io';

void main() {
  print("Digite el primer numero");
  var numero1 = int.parse(stdin.readLineSync()!);

  print("Digite el segundo numero");
  var numero2 = int.parse(stdin.readLineSync()!);

  numeroCubo(numero1, numero2);
}

void numeroCubo(int numero1, int numero2) {

  print("El cubo de los números entre $numero1 y $numero2 es:");
  
  for (int i = numero1; i <= numero2; i++) {
    var cubo = i * i * i;
    print("$i^3 = $cubo");
  }
}

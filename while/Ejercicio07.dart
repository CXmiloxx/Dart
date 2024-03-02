import "dart:io";

void main() {

  int suma = 5;
  while (suma != 0) {
      print("Digite el numero 1");
    var numero1 =
    int.parse(stdin.readLineSync().toString());

    print("Digite el numero 2");
    var numero2 =
    int.parse(stdin.readLineSync().toString());

    suma = numero1 + numero2;
    print("La suma de los numeros es : $suma");
  }
}
import 'dart:io';

void main() {
  print("ingrese un numero ");
  var numero = int.parse(stdin.readLineSync().toString());

  print("ingrese otro numero ");
  var numero2 = int.parse(stdin.readLineSync().toString());

  var suma = numero + numero2;
  print("la suma es $suma  ingrese otros numeros ");



  while (suma != 0) {

    print("ingrese otro numero ");
    numero = int.parse(stdin.readLineSync().toString());

    print("ingrese otro numero ");
    numero2 = int.parse(stdin.readLineSync().toString());

    suma = numero + numero2;

  }
  print("la suma es $suma");
}

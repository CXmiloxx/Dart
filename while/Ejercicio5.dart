import 'dart:io';

void main() {
  print("ingrese un numero ");
  var numero = int.parse(stdin.readLineSync().toString());

  print("ingrese otro numero ");
  var numero2 = int.parse(stdin.readLineSync().toString());

  var suma = 0;
  var i = 1;
  while (i <= numero2) {
    suma += i;
    print(suma);
    i++;
  }
}

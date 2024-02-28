import 'dart:io';

void main() {
  print("ingrese un numero ");
  var numero = int.parse(stdin.readLineSync().toString());

  var i = 1;
  var suma = 0;
  while (i <= numero) {
    suma += i;
    print(suma);
    i++;
  }
}

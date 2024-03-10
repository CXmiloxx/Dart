import 'dart:io';

void main() {
  print("Ingrese un numero: ");
  var numero = stdin.readLineSync()!;
  
  print("Digite la posicion que desea ver: ");
  var posicion = int.parse(stdin.readLineSync()!);
  
  var digito = obtenerDigitoEnPosicion(numero, posicion);
  
  if (digito != null) {
    print("El dígito en la posición $posicion es $digito");
  } else {
    print("La posición especificada no es válida para el número ingresado.");
  }
}

int? obtenerDigitoEnPosicion(String numero, int posicion) {
  if (posicion <= 0 || posicion > numero.length) {
    return null;
  }
  return int.parse(numero[posicion - 1]);
}

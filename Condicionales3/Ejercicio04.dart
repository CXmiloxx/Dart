import 'dart:io';

void main() {
  
  print('Ingrese la edad del cliente: ');
  int edad = 
  int.parse(stdin.readLineSync().toString());

  int precioEntrada;

  if (edad < 4) {
    precioEntrada = 0; 
  } else if (edad >= 4 && edad <= 18) {
    precioEntrada = 5000; 
  } else {
    precioEntrada = 10000; 
  }

  print('El precio de la entrada es: $precioEntrada');
}

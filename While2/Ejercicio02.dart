import 'dart:io';

void main() {

  String contrasenaCorrecta = "1234";

  String contrasenaIngresada;
  
  while (true) {
    print('Ingrese la contraseña: ');
    contrasenaIngresada = 
    stdin.readLineSync().toString();

    if (contrasenaIngresada == contrasenaCorrecta) {
      print('Bienvenido');
      break; 
    } else {
      print('Contraseña incorrecta. Inténtelo de nuevo.');
    }
  }
}

import 'dart:io';

void main() {

  String usuarioCorrecto = "pepe";
  String contrasenaCorrecta = "ola123";

  int intentosRestantes = 3;

  while (intentosRestantes > 0) {

    print('Ingrese su usuario: ');
    String usuarioIngresado =
    stdin.readLineSync().toString();

    print('Ingrese su contraseña: ');
    String contrasenaIngresada = stdin.readLineSync().toString();

    if (usuarioIngresado == usuarioCorrecto && contrasenaIngresada == contrasenaCorrecta) {
      print('¡Bienvenido, $usuarioCorrecto!');
      break; 
    } else {

      intentosRestantes--;
      print('Usuario o contraseña incorrectos. Intentos restantes: $intentosRestantes');
    }
  }

  if (intentosRestantes == 0) {
    print('Se agotaron los intentos. Intente más tarde.');
  }
}

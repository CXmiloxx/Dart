import 'dart:io';

void main() {
  print("ingrese su contraseña: ");
  var con = int.parse(stdin.readLineSync().toString());

  while (con != 1234) {
    print("Digite otra vez la contraseña: ");
    con = int.parse(stdin.readLineSync().toString());
  }
  print("Contraseña correcta");
}

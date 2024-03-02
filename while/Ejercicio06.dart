import "dart:io";

void main() {
  print("Digite contaseña en numeros");
  var clave =
  int.parse(stdin.readLineSync().toString());



  while (clave !=1234) {
    print("Contraseña incorrecta digite nuevamente\n");
    print("Digite contaseña ");
    clave =
    int.parse(stdin.readLineSync().toString());
  }
  print("contraseña correctamente");
}
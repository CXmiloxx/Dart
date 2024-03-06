import 'dart:io';

void main() {
  Map<String, dynamic> persona = {};

  print("Ingrese el nombre:");
  persona['nombre'] = stdin.readLineSync()!;

  print("Ingrese la edad:");
  persona['edad'] = int.parse(stdin.readLineSync()!);

  print("Ingrese el sexo:");
  persona['sexo'] = stdin.readLineSync()!;

  print("Ingrese el teléfono:");
  persona['telefono'] = stdin.readLineSync()!;

  print("Ingrese el correo:");
  persona['correo'] = stdin.readLineSync()!;

  print("Contenido del diccionario:");
  for (var key in persona.keys) {
    print("$key: ${persona[key]}");
  }
}

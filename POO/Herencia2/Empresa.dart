import 'dart:io';

class Empleado {
  String nombre;
  String apellido;
  int edad;

  Empleado(this.nombre, this.apellido, this.edad);

  void mostrarDetalles() {
    print("Ingresa el nombre del empleado");
    nombre = stdin.readLineSync()!;

    print("Ingresa el apellido del empleado");
    apellido = stdin.readLineSync()!;
    print("Ingresa la edad del empleado");

    edad = int.parse(stdin.readLineSync()!);

    print("");

    print("Datos del Empleado:");
    print("Nombre: $nombre $apellido");
    print("Edad: $edad años");
  }
}

class Programador extends Empleado {
  String lenguaje;

  Programador(String nombre, String apellido, int edad, this.lenguaje)
      : super(nombre, apellido, edad);

  void mostrarDetalles() {
        

    super.mostrarDetalles();
      print("Ingresa el lenguaje de programación");
      lenguaje = stdin.readLineSync()!;
      print("Lenguaje de programación: $lenguaje");
  }
}

void main() {
  var empleado = Empleado("", "", 0);

  empleado.mostrarDetalles();
  print("");

  var programador = Programador("", "", 0, "");

  programador.mostrarDetalles();
}

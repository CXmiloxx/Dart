  import 'dart:io';

  void main() {
    Map<String, String> usuarios = {};

    while (true) {
      print("Seleccione una opcion:");
      print("1. Guardar nuevo usuario");
      print("2. Mostrar usuarios");
      print("3. Modificar usuario");
      print("4. Eliminar usuario");
      print("5. Salir");

      var opcion = int.parse(stdin.readLineSync()!);

      switch (opcion) {
        case 1:

          print("Ingrese su cedula: ");
          var cedula = stdin.readLineSync()!;

          print("Ingrese su nombre: ");
          var nombre = stdin.readLineSync()!;
          usuarios[cedula] = nombre;

          print("Usuario guardado exitosamente.");
          break;
          
        case 2:

          print("Usuarios:");
          usuarios.forEach((key, value) {
            print("Cédula: $key, Nombre: $value");
          });
          break;

        case 3:

          print("Ingrese la cédula del usuario a modificar: ");
          var cedula = stdin.readLineSync()!;

          if (usuarios.containsKey(cedula)) {
            print("Ingrese el nuevo nombre: ");

            var nuevoNombre = stdin.readLineSync()!;
            usuarios[cedula] = nuevoNombre;
            
            print("Usuario modificado exitosamente.");
          } else {
            print("Usuario no encontrado.");
          }
          break;

        case 4:
          print("Ingrese la cédula del usuario a eliminar: ");
          var cedula = stdin.readLineSync()!;

          if (usuarios.containsKey(cedula)) {
            usuarios.remove(cedula);

            print("Usuario eliminado exitosamente.");
          } else {

            print("Usuario no encontrado.");
          }
          break;
        case 5:
          print("Saliendo del programa...");
          exit(0);
        default:
          print("Opción no válida. Intente nuevamente.");
      }
    }
  }

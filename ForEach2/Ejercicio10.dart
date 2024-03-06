/*Escribir un programa que permita gestionar la base de datos de clientes de una 
empresa. Los clientes se guardarán en un diccionario en el que la clave de cada cliente 
será su NIF, y el valor será otro diccionario con los datos del cliente (nombre, dirección, 
teléfono, correo, preferente), donde preferente tendrá el valor True si se trata de un 
cliente preferente. El programa debe preguntar al usuario por una opción del siguiente 
menú: (1) Añadir cliente, (2) Eliminar cliente, (3) Mostrar cliente, (4) Listar todos los 
clientes, (5) Listar clientes preferentes, (6) Terminar. En función de la opción elegida el 
programa tendrá que hacer lo siguiente: 
1. Preguntar los datos del cliente, crear un diccionario con los datos y añadirlo a 
la base de datos. 
2. Preguntar por el NIF del cliente y eliminar sus datos de la base de datos. 
3. Preguntar por el NIF del cliente y mostrar sus datos. 
4. Mostrar lista de todos los clientes de la base datos con su NIF y nombre. 
5. Mostrar la lista de clientes preferentes de la base de datos con su NIF y nombre. 
6. Terminar el programa. */

import 'dart:io';

void main() {
  Map<String, Map<String, dynamic>> baseDeDatosClientes = {};

  while (true) {
    print('\n1. Añadir cliente');
    print('2. Eliminar cliente');
    print('3. Mostrar cliente');
    print('4. Listar todos los clientes');
    print('5. Listar clientes preferentes');
    print('6. Terminar');
    stdout.write('Opción: ');
    var option = stdin.readLineSync()!;

    switch (option) {
      case '1':
        print('Ingrese los datos del cliente:');
        var cliente = Map<String, dynamic>();

        stdout.write('NIF: ');
        var nif = stdin.readLineSync()!;

        cliente['NIF'] = nif;
        stdout.write('Nombre: ');

        var nombre = stdin.readLineSync()!;
        cliente['nombre'] = nombre;

        stdout.write('Dirección: ');
        var direccion = stdin.readLineSync()!;
        cliente['dirección'] = direccion;

        stdout.write('Teléfono: ');
        var telefono = stdin.readLineSync()!;
        cliente['teléfono'] = telefono;

        stdout.write('Correo: ');
        var correo = stdin.readLineSync()!;
        cliente['correo'] = correo;

        stdout.write('¿Es preferente? (true/false): ');

        var esPreferente = stdin.readLineSync()!.toLowerCase() == 'true';

        cliente['preferente'] = esPreferente;
        baseDeDatosClientes[nif] = cliente;

        break;

      case '2':

        print('Ingrese el NIF del cliente a eliminar:');
        var nifEliminar = stdin.readLineSync()!;

        if (baseDeDatosClientes.containsKey(nifEliminar)) {
          
          baseDeDatosClientes.remove(nifEliminar);
          print('Cliente eliminado correctamente.');
          
        } else {
          print('El cliente con NIF $nifEliminar no existe.');
        }

        break;

      case '3':

        print('Ingrese el NIF del cliente a mostrar:');
        var nifMostrar = stdin.readLineSync()!;
        
        if (baseDeDatosClientes.containsKey(nifMostrar)) {

          print('Datos del cliente:');
          baseDeDatosClientes[nifMostrar]!.forEach((key, value) {

            print('$key: $value');

          });

        } else {
          print('El cliente con NIF $nifMostrar no existe.');
        }

        break;

      case '4':

        print('Lista de todos los clientes:');

        for (var cliente in baseDeDatosClientes.values) {

          print('NIF: ${cliente['NIF']}, Nombre: ${cliente['nombre']}');
        }

        break;

      case '5':

        print('Lista de clientes preferentes:');

        baseDeDatosClientes.values.where((cliente) => cliente['preferente']).forEach((cliente) {

          print('NIF: ${cliente['NIF']}, Nombre: ${cliente['nombre']}');

        });

        break;

      case '6':
      
        print('Programa terminado.');
        return;
      default:
        print('Opción no válida. Por favor, seleccione una opción válida.');
        break;
    }
  }
}

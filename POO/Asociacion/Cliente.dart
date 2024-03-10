import 'Direccion.dart';
import 'Persona.dart';

void main(List<String> arguments) {
  Direccion direccionLuis =
      Direccion(1,"SAL","2020","jefen");
  Persona luis =
      Persona("luis", edad: 22, direccion: direccionLuis,telefono: "66666");

  //Llamando a un atributo de la clase Direccion
  print(luis.direccion!.ciudad);
}

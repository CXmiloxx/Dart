//importamos el objeto desde otra clase
import 'galleta.dart';

void main(List<String> arguments) {
  //Llamado del objeto
  Galleta tom = new Galleta();
  //Llamado del metodo o clase
  tom.nacer();

  //Guardar el valor de uno de sus atributos en variable local
  var nombre = tom.name;
  var edad = tom.edad;
  print("El nombre de la galleta es $nombre y su edad es $edad ");
}

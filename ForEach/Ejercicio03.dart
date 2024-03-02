/*Escribir un programa que almacene las asignaturas de un curso (por ejemplo 
Matemáticas, Física, Química, Historia y Lengua) en una lista, pregunte al usuario la 
nota que ha sacado en cada asignatura, y después las muestre por pantalla con el 
mensaje En <asignatura> has sacado <nota> donde <asignatura> es cada una des las 
asignaturas de la lista y <nota> cada una de las correspondientes notas introducidas 
por el usuario.*/

import "dart:io";

void main() {
  var lista = ["Matemáticas", "Física", "Química", "Historia", "Lengua"];

  print("Ingrese su nota en Matematicas : ");

  double notaM = double.parse(stdin.readLineSync().toString());

  print("Ingrese su nota en  Física: ");

  double notaF = double.parse(stdin.readLineSync().toString());

  print("Ingrese su nota en  Química: ");

  double notaQ = double.parse(stdin.readLineSync().toString());

  print("Ingrese su nota en  Historia: ");

  double notaH = double.parse(stdin.readLineSync().toString());

  print("Ingrese su nota en  Lengua: ");

  double notaL = double.parse(stdin.readLineSync().toString());

  for (String x in lista) {

    if (x == "Matemáticas") {
      print("En $x has sacado $notaM");
    } else if (x == "Física") {
      print("En $x has sacado $notaF");
    }else if(x == "Quimica"){
      print("En $x has sacado $notaQ");
    }else if(x == "Historia"){
      print("En $x has sacado $notaH");
    }else if(x == "Lengua"){
      print("En $x has sacado $notaL");
    }
  }
}

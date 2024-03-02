/*Escribir un programa que almacene las asignaturas de un curso (por ejemplo 
Matemáticas, Física, Química, Historia y Lengua) en una lista y la muestre por pantalla 
el mensaje Yo estudio <asignatura>, donde <asignatura> es cada una de las 
asignaturas de la lista.*/

import "dart:io";

void main() {
    
    var lista = ["Matemáticas", "Física", "Química", "Historia","Lengua"];

    for (String x in lista) {
    print("yo estudio "+ x);
  }


}

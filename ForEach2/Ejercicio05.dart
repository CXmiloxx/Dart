/*Escribir un programa que almacene el diccionario con los créditos de las asignaturas 
de un curso {'Matemáticas': 6, 'Física': 4, 'Química': 5} y después muestre por pantalla 
los créditos de cada asignatura en el formato <asignatura> tiene <créditos> créditos, 
donde <asignatura> es cada una de las asignaturas del curso, y <créditos> son sus 
créditos. Al final debe mostrar también el número total de créditos del curso. */


void main() {

  var dic = {'Matemáticas': 6, 'Física': 4, 'Química': 5};
  int totalCreditos = 0;

  dic.forEach((key, value) {
    print("$key tiene $value créditos");
    totalCreditos += value; // Sumar los créditos de cada asignatura
  });

  // Imprimir el número total de créditos del curso
  print("El número total de créditos del curso es: $totalCreditos");
}


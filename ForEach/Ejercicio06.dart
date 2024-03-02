import 'dart:io';

void main() {
  // Lista de asignaturas
  List<String> asignaturas = [
    'Matemáticas', 
    'Física', 
    'Química', 
    'Historia', 
    'Lengua'
  ];


  List<String> asignaturasRepetir = [];


  asignaturas.forEach((asignatura) {
    stdout.write('¿Cuál es tu nota en $asignatura? ');
    double nota = double.parse(stdin.readLineSync()!);


    if (nota < 5) {
      asignaturasRepetir.add(asignatura);
    }
  });

  if (asignaturasRepetir.isEmpty) {
    print('¡Felicidades! Has aprobado todas las asignaturas.');
  } else {
    print('Debes repetir las siguientes asignaturas:');
    asignaturasRepetir.forEach((asignatura) {
      print(asignatura);
    });
  }
}

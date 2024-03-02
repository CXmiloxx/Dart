import 'dart:io';

void main() {
  
  print('Opciones de candidatos:');
  print('A - Candidato A por el partido rojo');
  print('B - Candidato B por el partido verde');
  print('C - Candidato C por el partido azul');

  print('Elija un candidato (A, B o C): ');
  String opcion = 
  stdin.readLineSync().toString().toUpperCase();

  if (opcion == 'A') {
    print('Usted ha votado por el partido rojo.');
  } else if (opcion == 'B') {
    print('Usted ha votado por el partido verde.');
  } else if (opcion == 'C') {
    print('Usted ha votado por el partido azul.');
  } else {
    print('Opción errónea. Por favor, elija una opción válida (A, B o C).');
  }
}

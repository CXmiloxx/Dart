import 'dart:io';

void main() {

  print('Ingrese la cantidad de notas a procesar: ');
  int cantidadNotas = 
  int.parse(stdin.readLineSync().toString());

  int notasMayoresIgualesA7 = 0;
  int notasMenoresA7 = 0;
  int i = 1;

  while (i <= cantidadNotas) {
    print('Ingrese la nota del alumno $i: ');
    double nota = 
    double.parse(stdin.readLineSync().toString());

    if (nota >= 7) {
      notasMayoresIgualesA7++;
    } else {
      notasMenoresA7++;
    }

    i++;
  }

  print('Cantidad de alumnos con notas mayores o iguales a 7: $notasMayoresIgualesA7');
  print('Cantidad de alumnos con notas menores a 7: $notasMenoresA7');
}

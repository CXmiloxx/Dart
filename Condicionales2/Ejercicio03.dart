import 'dart:io';

void main() {

    stdout.write("Ingrese la nota del primer taller (0-5)" );
    double notaTaller1 =
    double.parse(stdin.readLineSync().toString());

    stdout.write("Ingrese la nota del segundo taller (0-5): ");
    double notaTaller2 =
    double.parse(stdin.readLineSync().toString());

    stdout.write("Ingrese la nota del examen final (0-5): ");
    double notaExamenFinal =
    double.parse(stdin.readLineSync().toString());

    if (notaTaller1 < 0 || notaTaller1 > 5 ||
        notaTaller2 < 0 || notaTaller2 > 5 ||
        notaExamenFinal < 0 || notaExamenFinal > 5) {
    print('Por favor, ingrese notas válidas en el rango de 0 a 5.');
    return;
    }

    double notaDefinitiva = (notaTaller1 * 0.3) + (notaTaller2 * 0.3) + (notaExamenFinal * 0.4);

    print('La nota definitiva del alumno es: $notaDefinitiva');
}

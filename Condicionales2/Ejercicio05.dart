    import 'dart:io';

    void main() {

    print('Ingrese las horas trabajadas: ');
    double horasTrabajadas = 
    double.parse(stdin.readLineSync().toString());

    print('Ingrese el valor por hora: ');
    double valorPorHora =
    double.parse(stdin.readLineSync().toString());

    if (horasTrabajadas < 0 || valorPorHora < 0) {
    print('Por favor, ingrese valores válidos y positivos.');
    return;
    }

    double salario;
    if (horasTrabajadas > 40) {

    double horasExtras = horasTrabajadas - 40;
    salario = (40 * valorPorHora) + (horasExtras * valorPorHora * 1.5);
    } else {
    salario = horasTrabajadas * valorPorHora;
    }

    print('El salario del trabajador es: $salario');
    }

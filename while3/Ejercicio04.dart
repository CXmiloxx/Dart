import 'dart:io';

void main() {

  print('Ingrese la cantidad de empleados: ');
  int cantidadEmpleados = 
  int.parse(stdin.readLineSync().toString());

  double gastoTotal = 0;
  int empleadosEntre100y300 = 0;
  int empleadosMasDe300 = 0;
  int i = 1;

  while (i <= cantidadEmpleados) {
    print('Ingrese el sueldo del empleado $i: \$');
    double sueldo = 
    double.parse(stdin.readLineSync().toString());

    if (sueldo >= 100 && sueldo <= 300) {
      empleadosEntre100y300++;
    } else if (sueldo > 300) {
      empleadosMasDe300++;
    }

    gastoTotal += sueldo;

    i++;
  }

  print('Cantidad de empleados que cobran entre \$100 y \$300: $empleadosEntre100y300');
  print('Cantidad de empleados que cobran más de \$300: $empleadosMasDe300');
  print('Importe total que la empresa gasta en sueldos al personal: \$$gastoTotal');
}

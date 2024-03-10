import 'dart:io';

void main() {
  while (true) {
    print("¡Qué operación desea hacer?");
    print("1. Suma");
    print("2. Resta");
    print("3. Multiplicación");
    print("4. División");
    print("5. Salir");

    print("Digite la opción");
    var operacion = int.parse(stdin.readLineSync()!);

    if (operacion == 5) {
      break;
    } else if (operacion >= 1 && operacion <= 4) {
      operaciones(operacion);
    } else {
      print("Opción no válida");
    }
  }
}

void operaciones(int opcion) {
  
  print("Digite el primer número");
  var num1 = int.parse(stdin.readLineSync()!);

  print("Digite el segundo número");
  var num2 = int.parse(stdin.readLineSync()!);

  switch (opcion) {
    case 1:
      print("Resultado de la suma: ${num1 + num2}");
      break;
    case 2:
      print("Resultado de la resta: ${num1 - num2}");
      break;
    case 3:
      print("Resultado de la multiplicación: ${num1 * num2}");
      break;
    case 4:
      if (num2 == 0) {
        print("Error: No se puede dividir por cero");
      } else {
        print("Resultado de la división: ${num1 / num2}");
      }
      break;
  }
}

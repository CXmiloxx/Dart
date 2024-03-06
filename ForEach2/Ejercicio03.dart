import 'dart:io';

void main() {
  // Definir el diccionario de frutas y sus precios
  Map<String, double> frutas = {'Manzana': 1.5, 'Pera': 2.5, 'Plátano': 3.5};

  // Bucle principal para solicitar la fruta y la cantidad de kilos
  for (;;) {
    // Solicitar al usuario ingresar la fruta (o escribir "salir" para terminar)
    print('Ingrese una fruta (o escriba "salir" para terminar): ');
    String? fruta = stdin.readLineSync();

    // Salir del bucle si el usuario escribe "salir"
    if (fruta == 'salir') {
      break;
    }

    // Solicitar al usuario ingresar la cantidad de kilos
    print("Ingrese cantidad de kilos: ");
    double? kilos = double.tryParse(stdin.readLineSync() ?? '');

    // Verificar si la fruta está en el diccionario
    if (frutas.containsKey(fruta)) {
      // Calcular y mostrar el precio total
      if (kilos != null && kilos > 0) {
        double precioTotal = frutas[fruta]! * kilos;
        print('El precio de $kilos kilos de $fruta es: $precioTotal');
      } else {
        print('Cantidad de kilos inválida');
      }
    } else {
      print('Fruta no encontrada');
    }
  }
} 

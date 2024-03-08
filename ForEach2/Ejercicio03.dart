import 'dart:io';

void main() {
  Map<String, double> frutas = {'Manzana': 1.5, 'Pera': 2.5, 'Plátano': 3.5};

  for (;;) {

    print('Ingrese una fruta (o escriba "salir" para terminar): ');
    String? fruta = stdin.readLineSync();

    if (fruta == 'salir') {
      break;
    }

    print("Ingrese cantidad de kilos: ");
    double? kilos = double.tryParse(stdin.readLineSync() ?? '');

    if (frutas.containsKey(fruta)) {

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

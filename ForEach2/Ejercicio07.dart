/*Escribir un programa que cree un diccionario simulando una cesta de 
la compra. El programa debe preguntar el artículo y su precio y añadir 
el par al diccionario, hasta que el usuario decida terminar. Después se 
debe mostrar por pantalla la lista de la compra y el coste total, con el 
siguiente formato */

import 'dart:io';

void main() {
  Map<String, double> compra = {};

  bool terminado = false;
  while (!terminado) {

    print("Ingrese el nombre del producto (o '0' para finalizar): ");
    String nombre = stdin.readLineSync().toString();

    if (nombre.toLowerCase() == '0') {
      terminado = true;
      continue;
    }

    print("Ingrese el precio del producto: ");
    double precio = double.parse(stdin.readLineSync().toString());

    compra[nombre] = precio;
  }

  double costeTotal = 0;
  print("\nLista de la compra:");

  for (var entry in compra.entries) {

    print("${entry.key}: ${entry.value}");
    costeTotal += entry.value;
  }
  print("Coste total: $costeTotal");
}


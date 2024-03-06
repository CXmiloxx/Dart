/*Escribir un programa que cree un diccionario de traducción español
inglés. El usuario introducirá las palabras en español e inglés separadas por dos 
puntos, y cada par <palabra>:<traducción> separados por comas. El programa debe 
crear un diccionario con las palabras y sus traducciones. Después pedirá una frase en 
español y utilizará el diccionario para traducirla palabra a palabra. Si una palabra no 
está en el diccionario debe dejarla sin traducir. */

import 'dart:io';

void main() {
  Map<String, String> diccionario = {};

  // Pedir al usuario que introduzca las palabras en español e inglés
  print("Introduce las palabras en español e inglés separadas por dos puntos (por ejemplo, palabra:translation).");
  print("Escribe 'terminar' para finalizar.");

  bool terminado = false;
  while (!terminado) {
    String entrada = stdin.readLineSync().toString();
    if (entrada.toLowerCase() == "terminar") {
      terminado = true;
    continue;
    }
    
  var partes = entrada.split(":");
    if (partes.length == 2) {
      diccionario[partes[0].trim()] = partes[1].trim();
    } else {
      print("Formato incorrecto. Debe ser palabra:traducción.");
  }

  }

  print("\nDiccionario:");
  for (var entry in diccionario.entries) {
    print("${entry.key}: ${entry.value}");
  }

  print("\nIntroduce una frase en español para traducirla:");
  String frase = stdin.readLineSync().toString();

  List<String> palabras = frase.split(" ");
  List<String> traduccion = [];
  for (var palabra in palabras) {
    if (diccionario.containsKey(palabra)) {
      traduccion.add(diccionario[palabra]?? palabra);
    } else {
      traduccion.add(palabra);
    }
  }

  print("Traducción:");
  print(traduccion.join(" "));
}

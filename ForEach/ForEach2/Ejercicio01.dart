/*Escribir un programa que guarde en una variable el diccionario {'Euro':'€', 'Dollar':'$', 
'Yen':'¥'}, pregunte al usuario por una divisa y muestre su símbolo o un mensaje de aviso 
si la divisa no está en el diccionario.*/

import 'dart:io';

void main() {
  Map<String, String> divisa = {
    'Euro': '€',
    'Dollar': "#",
    'Yen': '¥',
  };

  print("Ingresa la divisa");

  String divisaN = stdin.readLineSync().toString();

  if (divisaN == divisa) {
    print("la divisa no es valida ");
  } else {
    print(divisa[divisaN]);
  }
}

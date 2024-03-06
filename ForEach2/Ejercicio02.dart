/*Escribir un programa que pregunte al usuario su nombre, edad, dirección y teléfono y 
lo guarde en un diccionario. Después debe mostrar por pantalla el mensaje <nombre> 
tiene <edad> años, vive en <dirección> y su número de teléfono es <teléfono>.*/

import 'dart:io';
void main(){
  String nombre, direccion, telefono;
  int edad;
  Map<String, String> diccionario;

  diccionario = new Map<String, String>();

  print("Ingrese su nombre: ");
  nombre = stdin.readLineSync().toString();
  diccionario["nombre"] = nombre;

  print("Ingrese su edad: ");
  edad = int.parse(stdin.readLineSync().toString());
  diccionario["edad"] = edad.toString();

  print("Ingrese su dirección: ");
  direccion = stdin.readLineSync().toString();
  diccionario["direccion"] = direccion;

  print("Ingrese su número de teléfono: ");
  telefono = stdin.readLineSync().toString();
  diccionario["telefono"] = telefono;

  print(diccionario);
}


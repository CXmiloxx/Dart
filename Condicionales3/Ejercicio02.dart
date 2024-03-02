import 'dart:io';

void main() {
  
  print('Ingrese su nombre: ');
  String nombre = 
  stdin.readLineSync().toString().toUpperCase(); //toUpperCase es para pasar el texto a mayuscula


  print('Ingrese su sexo (M/F): ');
  String sexo = 
  stdin.readLineSync().toString().toUpperCase(); 

  String grupo;
  if ((sexo == 'F' && nombre.compareTo('M') < 0) || (sexo == 'M' && nombre.compareTo('N') > 0)) {
    grupo = 'A';
  } else {
    grupo = 'B';
  }

  print('Usted pertenece al grupo $grupo.');
}

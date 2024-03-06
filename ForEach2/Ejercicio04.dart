/*Escribir un programa que pregunte una fecha en formato dd/mm/aaaa y muestre por 
pantalla la misma fecha en formato dd de <mes> de aaaa donde <mes> es el nombre 
del mes. */

import 'dart:io';

void main() {

  print("Ingrese la fecha en formato dd/mm/aaaa:");
  var fecha = stdin.readLineSync().toString();
  
  if (fecha.length != 10 || fecha[2] != '/' || fecha[5] != '/') {
    print("Formato de fecha incorrecto. Por favor, ingrese la fecha en formato dd/mm/aaaa.");
    return;
  }
  
  List<String> partesFecha = fecha.split('/');
  int dia = int.parse(partesFecha[0]);
  int mes = int.parse(partesFecha[1]);
  int anio = int.parse(partesFecha[2]);
  
  List<String> nombresMeses = [
    "enero", "febrero", "marzo", "abril", "mayo", "junio",
    "julio", "agosto", "septiembre", "octubre", "noviembre", "diciembre"
  ];
  
  print("La fecha en formato dd de <mes> de aaaa es:");
  print("$dia de ${nombresMeses[mes - 1]} de $anio");
}


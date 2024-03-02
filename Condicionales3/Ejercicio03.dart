import 'dart:io';

void main() {
  
  print('Ingrese su puntuación de rendimiento: ');
  var puntuacion = 
  double.parse(stdin.readLineSync().toString());

  String nivel;
  double cantidadDinero;

  if (puntuacion >= 60) {
    nivel = 'Sobresaliente';
    cantidadDinero = 200000 * puntuacion;
  } else if (puntuacion >= 40) {
    nivel = 'Aceptable';
    cantidadDinero = 200000 * puntuacion;
  } else if (puntuacion >= 20) {
    nivel = 'Regular';
    cantidadDinero = 200000 * puntuacion;
  } else if (puntuacion >= 0) {
    nivel = 'Inaceptable';
    cantidadDinero = 0.0; 
  } else {
    print('Por favor, ingrese una puntuación válida.');
    return;
  }

  // Mostrar el resultado
  print('Su nivel de rendimiento es $nivel.');
  print('Usted recibirá $cantidadDinero como bono.');
}

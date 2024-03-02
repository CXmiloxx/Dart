import 'dart:io';

void main() {
  
  print('Ingrese la distancia recorrida en kilómetros: ');
  double distanciaRecorrida = 
  double.parse(stdin.readLineSync().toString());

  double montoFijo = 300000;

  double montoAdicional300a1000 = 15000;
  double montoAdicional1000 = 10000;

  double montoAPagar;

  if (distanciaRecorrida <= 300) {
    montoAPagar = montoFijo;
  } else if (distanciaRecorrida <= 1000) {
    montoAPagar = montoFijo + montoAdicional300a1000 * (distanciaRecorrida - 300);
  } else {
    montoAPagar = montoFijo + montoAdicional300a1000 * 700 + montoAdicional1000 * (distanciaRecorrida - 1000);
  }

  double iva = 0.20 * montoAPagar;

  double montoTotal = montoAPagar + iva;

  print('Monto a pagar (sin IVA): \$$montoAPagar');
  print('IVA (20%): \$$iva');
  print('Monto total a pagar (con IVA): \$$montoTotal');
}

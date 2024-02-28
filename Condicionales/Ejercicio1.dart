import 'dart:io';
import 'dart:math';

void main() {
  print("digita la cantidad de empleados");

  var cEmpleados = int.parse(stdin.readLineSync().toString());

  print("digita la cantidad de horas trabajadas");

  var hTrabajadas = int.parse(stdin.readLineSync().toString());

  print("digita el valor por hora");

  var vHora = int.parse(stdin.readLineSync().toString());

  var pago = hTrabajadas * vHora;
  var subscidio = pago * 0.50;
  var pagoTotal = subscidio + pago;

  if (cEmpleados < 50) {
        print("el valor del estacionamiento es de : $pagoTotal ");
  }else{
    print("Su empresa no tendra subscidio");
  }


}

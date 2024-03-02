import 'dart:io';

void main() {
  
  int edadLimite1 = 30;
  int edadLimite2 = 50;
  double salarioMinimo = 1300000; 

  print('Ingrese su edad: ');
  int edad = 
  int.parse(stdin.readLineSync().toString());

  print('Ingrese su salario : ');
  double salario = 
  double.parse(stdin.readLineSync().toString());

  if (edad > edadLimite1 && salario > 2 * salarioMinimo) {
    
    double impuestoRenta = (salario * 12) * 0.20;
    print('Debe pagar el 20% de su salario anual en impuestos de renta: $impuestoRenta');
  } else if (edad > edadLimite2 && salario > salarioMinimo) {

    double impuestoRenta = (salario * 12) * 0.10;
    print('Debe pagar el 20% de su salario anual en impuestos de renta: $impuestoRenta');
  } else {
    
    print('No está sujeto al pago de impuestos de renta en este momento.');
  }
}

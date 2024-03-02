import 'dart:io';

void main() {

  print('Ingrese la cantidad de docenas a comprar: ');
  int cantidadDocenas = 
  int.parse(stdin.readLineSync().toString());

  double precioPorDocena = 120; 

  double montoCompra = cantidadDocenas * precioPorDocena;

  double descuento;
  double montoAPagar;

  if (cantidadDocenas > 3) {
    descuento = 0.15 * montoCompra;
    montoAPagar = montoCompra - descuento;
    
    int unidadesObsequio = cantidadDocenas - 3;
    print('Obsequio: $unidadesObsequio unidad(es) del producto.');
  } else {

    descuento = 0.10 * montoCompra;
    montoAPagar = montoCompra - descuento;
  }

  print('Monto de la compra: \$$montoCompra');
  print('Descuento aplicado: \$$descuento');
  print('Monto a pagar: \$$montoAPagar');
}

/*Escribir un programa que gestione las facturas pendientes de cobro de una empresa. 
Las facturas se almacenarán en un diccionario donde la clave de cada factura será el 
número de factura y el valor el coste de la factura. El programa debe preguntar al 
usuario si quiere añadir una nueva factura, pagar una existente o terminar. Si desea 
añadir una nueva factura se preguntará por el número de factura y su coste y se añadirá 
al diccionario. Si se desea pagar una factura se preguntará por el número de factura y se eliminará del diccionario. Después de cada operación el programa debe mostrar por 
pantalla la cantidad cobrada hasta el momento y la cantidad pendiente de cobro. */

import 'dart:io';

void main() {
  Map<int, double> facturas = {};

  double cantidadCobrada = 0;
  double cantidadPendiente = 0;

  while (true) {
    print("\n1. Añadir factura");
    print("2. Pagar factura");
    print("3. Costo de factura");
    print("4. Salir");

    int opcion = int.parse(stdin.readLineSync()!);

    switch (opcion) {
      case 1:
        print("Ingrese el número de factura:");
        int numeroFactura = int.parse(stdin.readLineSync()!);

        print("Ingrese el coste de la factura:");
        double costeFactura = double.parse(stdin.readLineSync()!);

        facturas[numeroFactura] = costeFactura;
        cantidadPendiente += costeFactura;

        break;

      case 2:

        print("Ingrese el número de factura a pagar:");
        int facturaAPagar = int.parse(stdin.readLineSync()!);

        double? costeFacturaPagada = facturas.remove(facturaAPagar);
        
        if (costeFacturaPagada != null) {
          cantidadCobrada += costeFacturaPagada;
          cantidadPendiente -= costeFacturaPagada;

          print("Factura pagada correctamente.");
        } else {
          print("La factura no existe.");
        }
        break;

      case 3:

        print("Cantidad cobrada hasta el momento: $cantidadCobrada");
        print("Cantidad pendiente de cobro: $cantidadPendiente");
        
        break;

        case 4:
          exit(0);
      
      default:
        
        print("Opción no válida. Por favor, seleccione una opción válida.");
        break;
    }
  }
}


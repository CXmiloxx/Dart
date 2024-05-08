import 'dart:io';

class Precio {
  double precio;

  Precio(this.precio);
}

class Factura extends Precio {
  String emisor;
  String cliente;

  Factura(double precio, this.emisor, this.cliente) : super(precio);

  void imprimirFactura() {
    print("Ingresa el nombre del cliente");
    String cliente = stdin.readLineSync()!;

    print("Ingresa el nombre del emisor");
    String emisor = stdin.readLineSync()!;

    print("Factura:");
    print("Cliente: $cliente");
    print("Emisor: $emisor");
    print(
        "Precio: \$${precio.toStringAsFixed(2)}"); // Formatear el precio con dos decimales
  }
}

void main() {
  var factura = Factura(100.0, "", "");

  factura.imprimirFactura();
}

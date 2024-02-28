import "dart:io";
void main() {
    print("Digite el valor de la compra");
    double articulo = 
    double.parse(stdin.readLineSync().toString());

    print("Digite el total del descuento");
    double descuento = 
    double.parse(stdin.readLineSync().toString());

    var operacion = (articulo * descuento) / 100;

    var total = articulo - operacion;
    

    print("El precio final de la compra es de : $total");
}
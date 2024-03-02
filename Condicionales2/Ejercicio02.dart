import "dart:io";

void main() {
  print("Digite el costo del producto");
  var costo =
  double.parse(stdin.readLineSync().toString());

  print("Digite el mes en el que esta haciendo su compra");
  var mes =
  (stdin.readLineSync().toString());

  double descuento = 0;
  
  if(mes == "enero" || mes == "febrero" || mes == "marzo"){
    costo = costo - costo * 0.15;
    print("El costo del articulo es de: $costo");
  }else if (mes == "abril" || mes == "mayo" || mes == "junio"){
    costo = costo - costo * 0.20;
    print("El costo del articulo es de: $costo");
  }else if (mes == "julio" || mes == "agosto" || mes == "septiembre" || mes == "octubre" || mes == "noviembre" || mes == "diciembre"){
    print("En este mes no hubo descuento, el costo del articulo es de: $costo");
  }else{
    print("Mes no existe intenta de nuevo");
  }
}
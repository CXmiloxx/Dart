import "dart:io";
import 'dart:math';

void main() {
  print("Digite el valor del cateto 1");
  var cateto1 = double.parse(stdin.readLineSync().toString());

  print("Digite el valor del cateto 2");
  var cateto2 = double.parse(stdin.readLineSync().toString());

  var hipotenusa = (cateto1 * cateto1) + (cateto2 * cateto2);

  var valorFinal = sqrt(hipotenusa);

  print("La hipotenusa del triangulo es : $valorFinal");
}

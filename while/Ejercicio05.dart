import "dart:io";

void main() {
  print("Digite el numero inicial");
  var numeroI =
  int.parse(stdin.readLineSync().toString());

  print("Digite el numero final");
  var numeroF =
  int.parse(stdin.readLineSync().toString());
  

  int suma = 0;
  while (numeroI <= numeroF) {
    suma = suma + numeroI;
    numeroI = numeroI + 1;
    print(suma);
  }
}
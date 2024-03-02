import "dart:io";

void main() {
  print("Digite el numero final");
  var numero =
  int.parse(stdin.readLineSync().toString());
  
  int i = 1;
  int suma = 0;
  while (i <= numero) {
    suma = suma + i;
    i = i + 1;
    print(suma);
  }
}

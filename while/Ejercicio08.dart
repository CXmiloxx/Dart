import 'dart:math';
import 'dart:io';

void main() {
  int numeroAzar = Random().nextInt(100);
  print(numeroAzar);

  int numeroAzar2 = Random().nextInt(100);
  print(numeroAzar2);
  
  print("Adivina el numero al azar");
  var numero =
  int.parse(stdin.readLineSync().toString());

  int suma = numeroAzar + numeroAzar2;

  while (numero != suma) {

    print("Adivina el numero al azar");
    numero =
    int.parse(stdin.readLineSync().toString());


  }
}

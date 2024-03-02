import 'dart:io';

void main() {
  List numeros = [];

  for (int i = 1; i <= 7; i++) {
    print('Ingrese el numero $i de la loteria:  ');
    int numero = int.parse(stdin.readLineSync().toString());

    numeros.add(numero);
  }
  // numeros.sort(); FUNCION RE EASY 


  for (int i = 0; i < numeros.length; i++) {

    for (int j = i+1; j < numeros.length; j++) {
      if (numeros[i] > numeros[j]) {
        var temp = numeros[i];
        numeros[i] = numeros[j];
        numeros[j] = temp;
        
      }
    }
  }

  int cont = 1;
  numeros.forEach((x) {
    print("El numero $cont que digitaste : $x ");
    cont++;
  });
}
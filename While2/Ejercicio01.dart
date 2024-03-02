import 'dart:io';

void main() {

  print('Ingrese el primer número positivo: ');
  int numero1 = 
  int.parse(stdin.readLineSync().toString());

  print('Ingrese el segundo número positivo: ');
  int numero2 = 
  int.parse(stdin.readLineSync().toString());

  int mayor, menor;

  if (numero1 > numero2) {
    mayor = numero1;
    menor = numero2;
  } else {
    mayor = numero2;
    menor = numero1;
  }

  print('Números pares entre $menor y $mayor:');

  while (menor <= mayor) {
    if (menor % 2 == 0) {
      print(menor);
    }
    menor++;
  }
}

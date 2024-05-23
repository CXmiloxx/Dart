import 'dart:io';

void main() {
  List<int> loteria = [];  

  print("Digita los números ganadores de la lotería separados por espacios:");
  
  String ganador = stdin.readLineSync()!;
  List<String> numeros = ganador.split(' ');

  numeros.forEach((numero) {
    loteria.add(int.parse(numero));
  });

  loteria.sort((a, b) => b.compareTo(a));

  print("Los números ganadores ordenados de mayor a menor son:");
  loteria.forEach((numero) {
    print(numero);
  });
}

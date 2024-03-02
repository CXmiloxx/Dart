import 'dart:io';

void main() {
  stdout.write('Ingrese una palabra: ');
  String palabra = stdin.readLineSync()!.toLowerCase();

  Map<String, int> contadoresVocales = {
    'a': 0,
    'e': 0,
    'i': 0,
    'o': 0,
    'u': 0,
  };

  palabra.split('').forEach((letra) {
    switch (letra) {
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':
        contadoresVocales.update(letra, (value) => value + 1);
        break;
    }
  });

  print('Número de veces que aparece cada vocal:');
  contadoresVocales.forEach((vocal, contador) {
    print('$vocal: $contador');
  });
}

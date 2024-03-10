import 'dart:io';

void main() {
  print("Digite una cadena de texto:");
  var texto = stdin.readLineSync()!.toLowerCase();

  Map<String, int> apariciones = contarVocales(texto);
  
  apariciones.forEach((vocal, cantidad) {
    print("$vocal: $cantidad");
  });
}

Map<String, int> contarVocales(String texto) {
  Map<String, int> apariciones = {
    'a': 0,
    'e': 0,
    'i': 0,
    'o': 0,
    'u': 0,
  };

  for (int i = 0; i < texto.length; i++) {
    String caracter = texto[i];
    if (apariciones.containsKey(caracter)) {
      apariciones[caracter] = apariciones[caracter]! + 1;
    }
  }

  return apariciones;
}

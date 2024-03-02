void main() {
  
  List<int> numeros = [];

  for (int i = 1; i <= 10; i++) {
    numeros.add(i);
  }

  numeros.reversed.forEach((numero) {
    if (numero != numeros.first) {
      print('$numero,');
    }
  });
}

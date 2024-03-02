void main() {
  List<String> abecedario = [
    'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 
    'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 
    'w', 'x', 'y', 'z'
  ];

  List<String> abecedarioFiltrado = [];

  abecedario.asMap().forEach((index, letra) {
    if ((index + 1) % 3 != 0) {
      abecedarioFiltrado.add(letra);
    }
  });

  print('Lista resultante después de eliminar las letras en posiciones múltiplos de 3:');
  abecedarioFiltrado.forEach((letra) {
    print(letra);
  });
}

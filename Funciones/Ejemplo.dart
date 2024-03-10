void main() {
  
  //Funciones Anonimas
  var numeros = List.from([1, 2, 3, 4, 5, 6]);

  numeros.forEach((item){
    print(item*item);
  });
  // String mensaje = saludar(nombre: 'hola', texto: "mensaje");
  // print(mensaje);
}

// String saludar({String? texto, String? nombre}) {
//   return '$texto + $nombre';
// }

// String saludar({String? texto, String? nombre}) => '$texto + $nombre';

class Multimedia {
  String titulo;
  String autor;
  String formato;
  Duration duracion;

  Multimedia(this.titulo, this.autor, this.formato, this.duracion);

  String dameTitulo() {
    return titulo;
  }

  String dameAutor() {
    return autor;
  }

  String dameFormato() {
    return formato;
  }

  Duration dameDuracion() {
    return duracion;
  }

  void imprimirInformacion() {
    print("Título: $titulo");
    print("Autor: $autor");
    print("Formato: $formato");
    print("Duración: $duracion");
  }

  bool sonIguales(Multimedia otro) {
    return this.titulo == otro.titulo && this.autor == otro.autor;
  }

  String toString() {
    return "Título: $titulo, Autor: $autor, Formato: $formato, Duración: $duracion";
  }
}

void main() {
  var pelicula = Multimedia(
      "Inception", "Christopher Nolan", "avi", Duration(hours: 2, minutes: 28));

  pelicula.imprimirInformacion();

  var otraPelicula = Multimedia(
      "Inception", "Christopher Nolan", "avi", Duration(hours: 2, minutes: 28));

  print("Las dos películas son iguales: ${pelicula.sonIguales(otraPelicula)}");
}

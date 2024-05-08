import 'dart:io';

class Cancion {
  String titulo;
  String autor;

  Cancion(this.titulo, this.autor);

  void DameTitulo() {
    print("El título de la canción es: $titulo");
  }

  void DameAutor() {
    print("El autor de la canción es: $autor");
  }

  void PonerTitulo() {
    print("Ingrese el nuevo título de la canción:");
    titulo = stdin.readLineSync()!;
  }

  void PonerAutor() {
    print("Ingrese el nuevo autor de la canción:");
    autor = stdin.readLineSync()!;
  }
}

void main() {
  Cancion c1 = Cancion("", "");

  c1.PonerAutor();
  c1.PonerTitulo();
  c1.DameAutor();
  c1.DameTitulo();
}

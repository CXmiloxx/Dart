import 'dart:io';

class Libro {
  String autor;
  String isbn;
  int cantidadPaginas;
  int edicion;
  String editorial;
  String ciudad;
  String pais;
  String fecha;

  Libro(this.autor, this.isbn, this.cantidadPaginas, this.edicion,
      this.editorial, this.ciudad, this.pais, this.fecha);

  void mostrarLibro() {
    print("El autor del libro es: $autor");
    print("El ISBN del libro es: $isbn");
    print("La cantidad de páginas del libro es: $cantidadPaginas");
    print("La edición del libro es: $edicion");
    print("La editorial del libro es: $editorial");
    print("La ciudad del libro es: $ciudad");
    print("El país del libro es: $pais");
    print("La fecha del libro es: $fecha");
  }

  void leerLibro() {
    print("Ingrese el autor del libro:");
    autor = stdin.readLineSync()!;

    print("Ingrese el ISBN del libro:");
    isbn = stdin.readLineSync()!;

    print("Ingrese la cantidad de páginas del libro:");
    cantidadPaginas = int.parse(stdin.readLineSync()!);

    print("Ingrese la edición del libro:");
    edicion = int.parse(stdin.readLineSync()!);

    print("Ingrese la editorial del libro:");
    editorial = stdin.readLineSync()!;

    print("Ingrese la ciudad del libro:");
    ciudad = stdin.readLineSync()!;

    print("Ingrese el país del libro:");
    pais = stdin.readLineSync()!;

    print("Ingrese la fecha del libro:");
    fecha = stdin.readLineSync()!;
  }
}

void main() {
  Libro libro = Libro("", "", 0, 0, "", "", "", "");
  libro.leerLibro();
  libro.mostrarLibro();
}

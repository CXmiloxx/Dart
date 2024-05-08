import 'dart:io';

class Cafeteria {
  int capacidadMaxima;
  int cantidadActual;

  Cafeteria(this.capacidadMaxima, this.cantidadActual);

  void cantidadATomar() {

    print("Ingrese la cantidad de café que desea tomar:");
    int cantidadTomada = int.parse(stdin.readLineSync()!);

    if (cantidadTomada <= capacidadMaxima) {
      cantidadActual += cantidadTomada;
      print("Se ha servido una taza de café. de ${cantidadActual} c.c");
    } else {
      print("No hay suficiente café en la cafetera.");
      cantidadActual = 0;
    }
  }

  void vaciarCafetera() {
    cantidadActual = 0;
    print("La cafetera ha sido vaciada.");
  }

  void agregarCafe() {
    print("Ingrese la cantidad de café que desea agregar:");
    int cantidadAgregada = int.parse(stdin.readLineSync()!);

    if (cantidadAgregada + cantidadActual <= capacidadMaxima) {
      cantidadActual += cantidadAgregada;
      print("Se ha agregado café a la cafetera. de ${cantidadActual} c.c ");
      print("La cafetera tiene una capacidad máxima de ${capacidadMaxima} c.c");
    } else {
      print("No se puede agregar más café, la cafetera está llena.");
    }
  }
}

void main() {
  Cafeteria starbucks = Cafeteria(1000, 0);

  starbucks.cantidadATomar();
  starbucks.agregarCafe();
}

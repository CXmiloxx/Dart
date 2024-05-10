class Vehiculo {
  String modelo; 
  int anio;
  String color; 

  Vehiculo(this.modelo, this.anio, this.color);
}

class Automovil extends Vehiculo {
  int numeroPuertas; 
  Automovil(String modelo, this.numeroPuertas) : super(modelo, 0, 'gris');
}

void main() {
  var coche = Automovil("Toyota", 4);

  print("Modelo: ${coche.modelo}");
  print("Año: ${coche.anio}");
  print("Color: ${coche.color}");
  print("Número de puertas: ${coche.numeroPuertas}");
}

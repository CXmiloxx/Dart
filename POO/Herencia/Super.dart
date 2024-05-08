// Definición de la clase base Vehiculo
class Vehiculo {
  String modelo; // Modelo del vehículo
  int anio; // Año de fabricación del vehículo
  String color; // Color del vehículo

  // Constructor de la clase base Vehiculo
  Vehiculo(this.modelo, this.anio, this.color);
}

// Definición de la subclase Automovil que hereda de Vehiculo
class Automovil extends Vehiculo {
  int numeroPuertas; // Número de puertas del automóvil

  // Constructor de la subclase Automovil que llama al constructor de la superclase Vehiculo
  Automovil(String modelo, this.numeroPuertas) : super(modelo, 0, 'gris');
}

void main() {
  // Crear una instancia de Automovil
  var coche = Automovil("Toyota", 4);

  // Imprimir los detalles del automóvil
  print("Modelo: ${coche.modelo}"); // Imprimir el modelo del automóvil
  print("Año: ${coche.anio}"); // Imprimir el año de fabricación del automóvil
  print("Color: ${coche.color}"); // Imprimir el color del automóvil
  print("Número de puertas: ${coche.numeroPuertas}"); // Imprimir el número de puertas del automóvil
}

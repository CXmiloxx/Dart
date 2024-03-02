import 'dart:io';

void main() {

  print('Opciones disponibles:');
  print('1. Pizza Vegetariana');
  print('2. Pizza No Vegetariana');

  print('Elija una opción (1 o 2): ');
  int opcion = 
  int.parse(stdin.readLineSync().toString());

  String tipoPizza;
  double precioBase;

  if (opcion == 1) {
    tipoPizza = 'Vegetariana';
    precioBase = 8000;
  } else if (opcion == 2) {
    tipoPizza = 'No Vegetariana';
    precioBase = 10000; 
  } else {
    print('Opción no válida.');
    return;
  }

  print('Ingredientes adicionales disponibles:');
  if (opcion == 1) {
    print('1. Pimiento (\$1000)');
    print('2. Tofu (\$2000)');
    print('3. Champiñones (\$3000)');
  } else if (opcion == 2) {
    print('1. Pepperoni (\$2000)');
    print('2. Jamón (\$3000)');
    print('3. Salmón (\$5000)');
  }

  print('Elija un ingrediente adicional (1, 2 o 3) o 0 para ninguno: ');
  int opcionIngrediente = 
  int.parse(stdin.readLineSync().toString());

  double precioIngrediente = 0.0;
  String ingredienteElegido = '';

  if (opcionIngrediente == 1) {
    precioIngrediente = opcion == 1 ? 1000.0 : 2000.0;
    ingredienteElegido = opcion == 1 ? 'Pimiento' : 'Pepperoni'; //operador ternario
  } else if (opcionIngrediente == 2) {
    precioIngrediente = opcion == 1 ? 2000.0 : 3000.0;
    ingredienteElegido = opcion == 1 ? 'Tofu' : 'Jamón';
  } else if (opcionIngrediente == 3) {
    precioIngrediente = opcion == 1 ? 3000.0 : 5000.0;
    ingredienteElegido = opcion == 1 ? 'Champiñones' : 'Salmón';
  }

  double precioTotal = precioBase + precioIngrediente;

  print('\nResumen del pedido:');
  print('Pizza: $tipoPizza');
  if (opcionIngrediente != 0) {
    print('Ingrediente adicional: $ingredienteElegido (\$$precioIngrediente)');
  }
  print('Precio total a pagar: \$$precioTotal');
}

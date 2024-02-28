import "dart:io";

void main() {
  print("Digite el valor de la hora");
  var valorHora = double.parse(stdin.readLineSync().toString());

  print("Digite las horas trabajadas");
  var horaTrabajada = double.parse(stdin.readLineSync().toString());

  var salario = valorHora * horaTrabajada;

  print("El salario es: $salario");
}

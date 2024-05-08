import 'dart:io';

class Empleado {
  int documento;
  String nombre;
  double horasTrabajadas;
  double sueldo;
  double horasRequeridas;
  double horasExtras;
  double cantidadMinutos;
  double valorMinutos;

  Empleado(this.valorMinutos)
      : documento = 0,
        nombre = '',
        horasTrabajadas = 0,
        sueldo = 0,
        horasRequeridas = 0,
        horasExtras = 0,
        cantidadMinutos = 0;

  void informacionTrabajador() {
    print("Ingresa tu documento:");
    documento = int.parse(stdin.readLineSync()!);

    print("Ingresa tu nombre:");
    nombre = stdin.readLineSync()!;

    print("Ingresa tus horas trabajadas al mes:");
    horasTrabajadas = double.parse(stdin.readLineSync()!);

    print("Ingresa tus horas requeridas al mes:");
    horasRequeridas = double.parse(stdin.readLineSync()!);

    print("Ingresa tu sueldo mensual:");
    sueldo = double.parse(stdin.readLineSync()!);
  }

  void calcularHorasExtras() {
    horasExtras = horasTrabajadas > horasRequeridas
        ? horasTrabajadas - horasRequeridas
        : 0;

    cantidadMinutos = horasExtras * 60;

    sueldo += (valorMinutos * cantidadMinutos);
  }

  void imprimirInformacion() {
    print("Documento: $documento");
    print("Nombre: $nombre");
    print("Horas Trabajadas: $horasTrabajadas");
    print("Horas Requeridas: $horasRequeridas");
    print("Sueldo: $sueldo");

    if (horasExtras > 0) {
      print("Cantidad de minutos extras: $cantidadMinutos");
      print("Valor de minutos extras: $valorMinutos");
    }
  }
}

void main() {
  var empleado1 = Empleado(1000);

  empleado1.informacionTrabajador();
  empleado1.calcularHorasExtras();
  empleado1.imprimirInformacion();
}

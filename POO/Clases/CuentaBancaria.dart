import 'dart:io';

class Cuenta {
  int numeroCuenta;
  int numeroDocumento;
  int saldoActual;
  double interesAnual;

  Cuenta(this.numeroCuenta, this.numeroDocumento, this.saldoActual, this.interesAnual);

  void IngresarCantidadCuenta(Cuenta persona) {

    print("Ingresa una cantidad para tu cuenta");
    var cantidadCuenta = int.parse(stdin.readLineSync()!);

    persona.saldoActual = persona.saldoActual + cantidadCuenta;

    print("Bienvenido al Sistema de Cuentas su cuenta es de ");
    print(persona.saldoActual);
  }

  void RetirarCantidadCuenta(Cuenta persona) {

    print("Ingresa una cantidad  a retirar de tu cuenta");
    var retirarCuenta = int.parse(stdin.readLineSync()!);

    persona.saldoActual = persona.saldoActual - retirarCuenta;

    print("Acaba de retirtar" + retirarCuenta.toString());
    print("Su saldo actual es de " + persona.saldoActual.toString());
  }

  void ImprimirCuenta(Cuenta persona) {
    
    print(persona.numeroDocumento.toString());
    print(persona.numeroCuenta.toString());
    print(persona.saldoActual.toString());

    double interes = persona.saldoActual * (persona.interesAnual / 100);
    print("El interés anual es: $interes");
  }
}

void main() {
  var persona = Cuenta(1, 1032, 0, 5);
  persona.IngresarCantidadCuenta(persona);
  persona.RetirarCantidadCuenta(persona);
  persona.ImprimirCuenta(persona);
}

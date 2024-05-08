// Clase Producto
class Producto {
  DateTime fechaCaducidad;
  String numeroLote;

  Producto(this.fechaCaducidad, this.numeroLote);

  String toString() {
    return 'Fecha Caducidad: $fechaCaducidad, Número de Lote: $numeroLote';
  }
}

class ProductoFresco extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;

  ProductoFresco(DateTime fechaCaducidad, String numeroLote, this.fechaEnvasado,
      this.paisOrigen)
      : super(fechaCaducidad, numeroLote);

  String toString() {
    return 'Producto Fresco - ${super.toString()}, Fecha Envasado: $fechaEnvasado, País Origen: $paisOrigen';
  }
}

class ProductoRefrigerado extends Producto {
  String codigoOrganismo;
  DateTime fechaEnvasado;
  double temperaturaMantenimiento;
  String paisOrigen;

  ProductoRefrigerado(
      DateTime fechaCaducidad,
      String numeroLote,
      this.codigoOrganismo,
      this.fechaEnvasado,
      this.temperaturaMantenimiento,
      this.paisOrigen)
      : super(fechaCaducidad, numeroLote);

  String toString() {
    return 'Producto Refrigerado - ${super.toString()}, Código Organismo: $codigoOrganismo, Fecha Envasado: $fechaEnvasado, Temperatura Mantenimiento: $temperaturaMantenimiento, País Origen: $paisOrigen';
  }
}

class ProductoCongelado extends Producto {
  DateTime fechaEnvasado;
  String paisOrigen;
  double temperaturaMantenimiento;

  ProductoCongelado(DateTime fechaCaducidad, String numeroLote,
      this.fechaEnvasado, this.paisOrigen, this.temperaturaMantenimiento)
      : super(fechaCaducidad, numeroLote);

  String toString() {
    return 'Producto Congelado - ${super.toString()}, Fecha Envasado: $fechaEnvasado, País Origen: $paisOrigen, Temperatura Mantenimiento: $temperaturaMantenimiento';
  }
}

class CongeladoPorAire extends ProductoCongelado {
  double porcentajeNitrogeno;
  double porcentajeOxigeno;
  double porcentajeDioxidoCarbono;
  double porcentajeVaporAgua;

  CongeladoPorAire(
      DateTime fechaCaducidad,
      String numeroLote,
      DateTime fechaEnvasado,
      String paisOrigen,
      double temperaturaMantenimiento,
      this.porcentajeNitrogeno,
      this.porcentajeOxigeno,
      this.porcentajeDioxidoCarbono,
      this.porcentajeVaporAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen,
            temperaturaMantenimiento);

  String toString() {
    return 'Congelado Por Aire - ${super.toString()}, Porcentaje Nitrógeno: $porcentajeNitrogeno, Porcentaje Oxígeno: $porcentajeOxigeno, Porcentaje Dióxido de Carbono: $porcentajeDioxidoCarbono, Porcentaje Vapor de Agua: $porcentajeVaporAgua';
  }
}

class CongeladoPorAgua extends ProductoCongelado {
  double salinidadAgua;

  CongeladoPorAgua(
      DateTime fechaCaducidad,
      String numeroLote,
      DateTime fechaEnvasado,
      String paisOrigen,
      double temperaturaMantenimiento,
      this.salinidadAgua)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen,
            temperaturaMantenimiento);

  String toString() {
    return 'Congelado Por Agua - ${super.toString()}, Salinidad Agua: $salinidadAgua';
  }
}

class CongeladoPorNitrogeno extends ProductoCongelado {
  String metodoCongelacion;
  int tiempoExposicionNitrogeno;

  CongeladoPorNitrogeno(
      DateTime fechaCaducidad,
      String numeroLote,
      DateTime fechaEnvasado,
      String paisOrigen,
      double temperaturaMantenimiento,
      this.metodoCongelacion,
      this.tiempoExposicionNitrogeno)
      : super(fechaCaducidad, numeroLote, fechaEnvasado, paisOrigen,
            temperaturaMantenimiento);

  String toString() {
    return 'Congelado Por Nitrógeno - ${super.toString()}, Método Congelación: $metodoCongelacion, Tiempo Exposición Nitrógeno: $tiempoExposicionNitrogeno';
  }
}

void main() {
  ProductoFresco productoFresco =
      ProductoFresco(DateTime.now(), "123", DateTime.now(), "España");
  ProductoRefrigerado productoRefrigerado = ProductoRefrigerado(
      DateTime.now(), "456", "ABC", DateTime.now(), 4.0, "Francia");
  CongeladoPorAire productoPorAire = CongeladoPorAire(
      DateTime.now(), "545", DateTime.now(), "Peru", -5, 0.5, 11, 3.1, 2.0);
  CongeladoPorNitrogeno productoCongelado = CongeladoPorNitrogeno(DateTime.now(),"789",DateTime.now(),"Alemania",-18.0,"Método X",3600);

  print("Información del producto fresco:");
  print(productoFresco);
  print("Información del producto refrigerado:");
  print(productoRefrigerado);
  print("Información del producto congelado por aire:");
  print(productoPorAire);
  print("Información del producto congelado por nitrógeno:");
  print(productoCongelado);
}

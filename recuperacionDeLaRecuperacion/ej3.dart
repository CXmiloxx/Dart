import 'dart:io';

class Estudiante {
  final String nombre;
  final String documento;
  final double nota;

  Estudiante(this.nombre, this.documento, this.nota);
}

void main() {
  Map<String, Estudiante> estudiantes = {};

  while (true) {
    print("\n1. Agregar estudiante");
    print("2. Consultar nota de estudiante");
    print("3. Mostrar nota mayor");
    print("4. Mostrar nota menor");
    print("5. Mostrar promedio de notas");
    print("6. Mostrar estudiantes aprobados");
    print("7. Mostrar estudiantes reprobados");
    print("8. Salir");

    var opcion = stdin.readLineSync()!;
    switch (opcion) {
      case "1":
        agregarEstudiante(estudiantes);
        break;
      case "2":
        consultarNota(estudiantes);
        break;
      case "3":
        mostrarNotaMayor(estudiantes);
        break;
      case "4":
        mostrarNotaMenor(estudiantes);
        break;
      case "5":
        mostrarPromedio(estudiantes);
        break;
      case "6":
        mostrarAprobados(estudiantes);
        break;
      case "7":
        mostrarReprobados(estudiantes);
        break;
      case "8":
        exit(0);
      default:
        print("Opción no válida.");
    }
  }
}

void agregarEstudiante(Map<String, Estudiante> estudiantes) {
  print("Ingrese el número de documento del estudiante:");
  var documento = stdin.readLineSync()!;
  print("Ingrese el nombre del estudiante:");
  var nombre = stdin.readLineSync()!;
  print("Ingrese la nota del estudiante:");
  var nota = double.parse(stdin.readLineSync()!);

  estudiantes[documento] = Estudiante(nombre, documento, nota);
}

void consultarNota(Map<String, Estudiante> estudiantes) {
  print("Ingrese el número de documento del estudiante:");
  var documento = stdin.readLineSync()!;
  var estudiante = estudiantes[documento];
  if (estudiante != null) {
    print("Nombre: ${estudiante.nombre}");
    print("Nota: ${estudiante.nota}");
  } else {
    print("Estudiante no encontrado.");
  }
}

void mostrarNotaMayor(Map<String, Estudiante> estudiantes) {
  if (estudiantes.isEmpty) {
    print("No hay estudiantes registrados.");
    return;
  }
  double notaMayor = 0.0;
  String nombreEstudiante = '';
  estudiantes.forEach((key, estudiante) {
    if (estudiante.nota > notaMayor) {
      notaMayor = estudiante.nota;
      nombreEstudiante = estudiante.nombre;
    }
  });
  print("La nota mayor es: $notaMayor");
  print("Nombre del estudiante: $nombreEstudiante");
}

void mostrarNotaMenor(Map<String, Estudiante> estudiantes) {
  if (estudiantes.isEmpty) {
    print("No hay estudiantes registrados.");
    return;
  }
  double notaMenor = estudiantes.values.first.nota;
  String nombreEstudiante = '';
  estudiantes.forEach((key, estudiante) {
    if (notaMenor > estudiante.nota) {
      notaMenor = estudiante.nota;
      nombreEstudiante = estudiante.nombre;
    }
  });
  print("La nota menor es: $notaMenor");
  print("Nombre del estudiante: $nombreEstudiante");
}

void mostrarPromedio(Map<String, Estudiante> estudiantes) {
  if (estudiantes.isEmpty) {
    print("No hay estudiantes registrados.");
    return;
  }
  double totalNotas = 0.0;
  estudiantes.forEach((key, estudiante) {
    totalNotas += estudiante.nota;
  });
  double promedio = totalNotas / estudiantes.length;
  print("El promedio de notas es: $promedio");
}

void mostrarAprobados(Map<String, Estudiante> estudiantes) {
  if (estudiantes.isEmpty) {
    print("No hay estudiantes registrados.");
    return;
  }
  print("Estudiantes aprobados:");
  estudiantes.forEach((key, estudiante) {
    if (estudiante.nota >= 70) {
      print("${estudiante.nombre} - ${estudiante.nota}");
    }
  });
}

void mostrarReprobados(Map<String, Estudiante> estudiantes) {
  if (estudiantes.isEmpty) {
    print("No hay estudiantes registrados.");
    return;
  }
  print("Estudiantes reprobados:");
  estudiantes.forEach((key, estudiante) {
    if (estudiante.nota < 70) {
      print("${estudiante.nombre} - ${estudiante.nota}");
    }
  });
}

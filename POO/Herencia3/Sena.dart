class Persona {
  String cedula;
  String nombres;
  int edad;
  String sexo;

  Persona(this.cedula, this.nombres, this.edad, this.sexo);
}

class Aprendiz extends Persona {
  int calificacion;
  int faltas;

  Aprendiz(String cedula, String nombres, int edad, String sexo,
      this.calificacion, this.faltas)
      : super(cedula, nombres, edad, sexo);
}

class Profesor extends Persona {
  String materiaAsignada;
  int faltas;

  Profesor(String cedula, String nombres, int edad, String sexo,
      this.materiaAsignada, this.faltas)
      : super(cedula, nombres, edad, sexo);
}

class Aula {
  int identificador;
  int numeroMaximoAprendices;
  String asignatura;
  List<Aprendiz> alumnos = [];
  Profesor profesor;
  int numeroMaximoFaltasProfesor;
  double porcentajeFaltasMaximoAlumnos;

  Aula(
      this.identificador,
      this.numeroMaximoAprendices,
      this.asignatura,
      this.profesor,
      this.numeroMaximoFaltasProfesor,
      this.porcentajeFaltasMaximoAlumnos);

  bool puedeDarseClase() {
    int numeroPresentes = alumnos.where((a) => a.faltas <= (porcentajeFaltasMaximoAlumnos * 100)).length;
    bool profesorDisponible = profesor.faltas <= (numeroMaximoFaltasProfesor * 100);
    bool suficientesAlumnos = numeroPresentes >= (0.6 * alumnos.length);

    return profesorDisponible && suficientesAlumnos;
  }

  void mostrarEstadoClase() {
    if (puedeDarseClase()) {
      int alumnosAprobados = alumnos.where((a) => a.calificacion >= 6).length;
      int alumnasAprobadas = alumnos.where((a) => a.calificacion >= 6 && a.sexo == 'F').length;
      int alumnosAprobadosMasculino = alumnosAprobados - alumnasAprobadas;

      print("La clase puede darse.");
      print("Alumnos aprobados: $alumnosAprobadosMasculino");
      print("Alumnas aprobadas: $alumnasAprobadas");
    } else {
      print("No se puede dar la clase.");
    }
  }
}

void main() {
  Aprendiz aprendiz1 = Aprendiz("123456", "Juan Perez", 20, "M", 10, 10);
  Aprendiz aprendiz2 = Aprendiz("789101", "Maria Gomez", 22, "F", 10, 10);
  Aprendiz aprendiz3 = Aprendiz("112131", "Carlos Sanchez", 19, "M", 1, 20);

  Profesor profesor = Profesor(
      "141516", "Ana Ramirez", 35, "F", "Programación Orientada a Objetos", 15);

  Aula aula = Aula(1, 30, "Programación Orientada a Objetos", profesor, 20, 0.1);

  aula.alumnos.add(aprendiz1);
  aula.alumnos.add(aprendiz2);
  aula.alumnos.add(aprendiz3);
  
  aula.mostrarEstadoClase();
}

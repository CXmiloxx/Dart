import 'Mascota.dart';

void main(List<String> arguments) {
  // Instancias de objetos
  Mascota perro = Mascota("chad", "pastor-Aleman", true);
  Mascota gato = Mascota.edad("phel","Arrua", true,edad: 20);
  // Funciones
  perro.nacer();
  gato.nacer();

  // Acceder a los atributos
  var nombrePerro = perro.getNombre;
  var especiePerro = perro.getRaza;
  print(
      "El nombre de la mascota es $nombrePerro y su especie es $especiePerro");

  var nombreGato = gato.getNombre;
  var razaGato = gato.getRaza;
  var edadGato = gato.edad; // No sobrescribas el valor de la edad del gato
  print(
      "El nombre del gato es $nombreGato, su raza es $razaGato y  su edad es $edadGato años");

  if (edadGato != null) {
    edadGato > 10
        ? print("El gato es mayor de 10 años")
        : print("El gato es menor o igual a 10 años");
  } else {
    print("La edad del gato es desconocida");
  }

  bool recogerGato = gato.aprenderRecogerPelota();
  bool recogerPerro = perro.aprenderRecogerPelota();

  // Operador ternario
  recogerGato ? print("El gato aprendió") : print("El gato no aprendió");
  recogerPerro ? print("El perro aprendió") : print("El perro no aprendió");
}

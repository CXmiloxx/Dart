// Objeto
class Mascota {
  //atributos
  String? nombre;
  String? raza;
  int? _edad; //atributos privado  _
  bool? recogerPelota;

  // Getters y Setters
  String? get getNombre => nombre;
  String? get getRaza => raza;
  int? get edad => _edad;
  bool? get getRecogerPelota => recogerPelota;

  set setNombre(String? nombre) => this.nombre = nombre;
  set setRaza(String? raza) => this.raza = raza;
  set setEdad(int? edad) => _edad = edad;
  set setRecogerPelota(bool? recogerPelota) => this.recogerPelota = recogerPelota;

  // Constructor
  Mascota(this.nombre, this.raza, this.recogerPelota,);

  
  //Constructor para que un dato no sea necesario
  Mascota.edad(this.nombre, this.raza, this.recogerPelota, {edad}){
        _edad = edad; // Asignar el valor del parámetro de edad al atributo privado _edad
  }

  //Constructor sin datos
  Mascota.sinDatos({this.nombre, this.raza, edad, this.recogerPelota});

  // Método
  void nacer() {
    print("Nació $nombre");
  }

  bool aprenderRecogerPelota() {
    if (edad != null && edad! > 10) {
      recogerPelota = true;
      return true;
    } else {
      recogerPelota = false;
      return false;
    }
  }
}

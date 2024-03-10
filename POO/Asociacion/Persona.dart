import 'Direccion.dart';

class Persona {
  String? _nombre;
  int? edad;
  String? telefono;
  Direccion? direccion; //atributo de tipo direccion de un  Objeto

  // Atributos privados deben de crearse los gettets and setters
  get nombre => this._nombre;

  set nombre(value) => this._nombre = value;

  Persona(this._nombre, {this.edad, this.direccion, this.telefono});
}

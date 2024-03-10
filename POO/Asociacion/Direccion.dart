class Direccion {
  int? _numeroVia;
  String? _nombreCalle;
  String? _codigoPostal;
  String? _ciudad;

  get numeroVia => this._numeroVia;
  get nombreCalle => this._nombreCalle;
  get codigoPostal => this._codigoPostal;
  get ciudad => this._ciudad;

  set numeroVia(value) => this._numeroVia = value;
  set nombreCalle(value) => this._nombreCalle = value;
  set codigoPostal(value) => this._codigoPostal = value;
  set ciudad(value) => this._ciudad = value;

  Direccion(this._numeroVia, this._nombreCalle, this._codigoPostal, this._ciudad);

}

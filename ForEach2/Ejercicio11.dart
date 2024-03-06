void main() {
  String directorioClientes =
      "nif;nombre;email;teléfono;descuento\n01234567L;Luis González;luisgonzalez@mail.com;656343576;12.5\n71476342J;Macarena Ramírez;macarena@mail.com;692839321;8\n63823376M;Juan José Martínez;juanjo@mail.com;664888233;5.2\n98376547F;Carmen Sánchez;carmen@mail.com;667677855;15.7";

  List<String> lineas = directorioClientes.split('\n');

  Map<String, Map<String, dynamic>> directorio = {};

  String campos = lineas[0];
  List<String> nombresCampos = campos.split(';');

  for (int i = 1; i < lineas.length; i++) {
    List<String> elementosCliente = lineas[i].split(';');
    Map<String, dynamic> infoCliente = {};

    for (int j = 0; j < nombresCampos.length; j++) {
      infoCliente[nombresCampos[j]] = elementosCliente[j];
    }
    directorio[infoCliente['nif']] = infoCliente;
  }

  directorio.forEach((nif, cliente) {
    print("$nif: $cliente");
  });
}

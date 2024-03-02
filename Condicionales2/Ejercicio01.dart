import "dart:io";

void main() {
  print("Digite la cantidad de mujeres del sena");
  var mujeres =
  int.parse(stdin.readLineSync().toString());

  print("Digite la cantidad de hombres del sena");
  var hombres =
  int.parse(stdin.readLineSync().toString());
  
  if(mujeres > hombres){
    print("Hay una mayor cantidad de mujeres con un numero de: $mujeres");
  }else{
    print("Hay una mayor cantidad de hombres con un numero de: $hombres");
  }
}
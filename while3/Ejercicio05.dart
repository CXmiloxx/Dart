import 'dart:io';

void main() {

  print('ingrese los valores de la lista 1:\n ');
  int cont = 1;
  double lista1 = 0;
  double lista2 = 0;
  double n;
  int i=1;

  while (i <= 30) {
    print('Digite el numero $i de la lista $cont: \$');
    i++;
    n =
    double.parse(stdin.readLineSync().toString());
    if(i == 16 ){
        cont++;
        i=1;
        
    }
    if (i<=15){

        lista1 = lista1 + n;
    }else{
        lista2 = lista2 + n;
    }

  }
  if (lista1> lista2){
    print("Lista 1 es mayor con un total de $lista1");
  }else{
    print("Lista 2 es mayor con un total de $lista2");
  }

}

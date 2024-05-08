//Construya un programa que calcule el cuadrado de los 10 primeros números enteros.

void main() {
  
 //Funciones Anonimas
  var numeros = List.from([1, 2, 3, 4, 5, 6,7, 8, 9, 10,]);

  numeros.forEach((item){
    print(item*item);
  });
}
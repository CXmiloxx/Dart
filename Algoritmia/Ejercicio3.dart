import "dart:io";
void main() {
    print("Digite el primer numero");
    double numero1 = 
    double.parse(stdin.readLineSync().toString());

    print("Digite el segundo numero");
    double numero2 = 
    double.parse(stdin.readLineSync().toString());

    var suma = numero1 + numero2;
    var resta = numero1 - numero2;
    var multiplicacion = numero1 * numero2;
    var division = numero1 / numero2;
    

    print("La suma de estos numeros es: $suma\n" "La resta de estos numeros es: $resta\n" "La multiplicacion de estos numeros es: $multiplicacion\n"
    "La division de estos numeros es: $division ");
}
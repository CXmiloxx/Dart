import 'dart:io';
import 'dart:math';

void main() {

  Random random = Random();
  int num1 = random.nextInt(101);
  int num2 = random.nextInt(101);

  int sumaCorrecta = num1 + num2;
  int respuestaUsuario;

  print('Calcula e introduce la suma de $num1 y $num2: ');
  respuestaUsuario = 
  int.parse(stdin.readLineSync().toString());

  while (respuestaUsuario != sumaCorrecta) {
    print('Respuesta incorrecta. Vuelve a intentarlo.');
    print('Calcula e introduce la suma de $num1 y $num2: ');
    respuestaUsuario = 
    int.parse(stdin.readLineSync().toString());
  }

  print('¡Respuesta correcta! La suma de $num1 y $num2 es $sumaCorrecta.');
}

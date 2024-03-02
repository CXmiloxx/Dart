import 'dart:io';

void main() {

  print('Ingrese un número para generar la serie Fibonacci hasta ese punto: ');
  int n = 
  int.parse(stdin.readLineSync().toString());

  print('Serie Fibonacci hasta $n:');
  int a = 0, b = 1, c;

  while (a <= n) {
    print(a);
    c = a + b;
    a = b;
    b = c;
  }
}

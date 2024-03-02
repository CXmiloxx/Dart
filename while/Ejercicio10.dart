void main() {
  
  double poblacionA = 3.5; 
  double poblacionB = 5.0; 

  double tasaCrecimientoA = 0.15;
  double tasaCrecimientoB = 0.07;

  int ano = 1980;

  while (poblacionA <= poblacionB) {
    poblacionA += poblacionA * tasaCrecimientoA; 
    poblacionB += poblacionB * tasaCrecimientoB; 
    ano++;
  }

  print('En el año $ano, la población de la ciudad A supera a la de la ciudad B.');
}

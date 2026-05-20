int operacion(int valorUno, int valorDos){
  int suma = valorUno + valorDos;
  return suma;
}

void main() {
  int resultado = operacion(21, 35);
  print('\nEl Resultado es: $resultado');

  //Otra manera de usar es:
  print('\nEl Resultado es: ${operacion(7, 3)}');

  //De otra forma más:
  print(operacion(20, 2));
}


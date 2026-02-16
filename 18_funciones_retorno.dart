int operacion(){
  int valorUno = 10;
  int valorDos = 15;
  int suma = valorUno + valorDos;
  return suma;
}

void main() {
  //Una forma de uso con Retorno
  print(operacion());

  //Otra forma es:
  int resultado = operacion();
  print('El Resultado de la Función es: $resultado');

  //Otra más
  print('El Resultado de la Función es: ${operacion()}');
  
}


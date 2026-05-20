void main() {
  int contador = 1;
  print('\nCiclo While Incremento');
  while (contador <= 5) {
    print('Contador: $contador');
    contador++;
  }
  // Salida: Contador: 1, 2, 3, 4, 5

  //Decrementos
  print('\nCiclo While Decremento');
  contador = 5;
  while (contador >= 1) {
    print('Contador: $contador');
    contador--;
  }

  //Do While
  print('\nCiclo Do While Incremento');
  int numero = 1;
  do {
    print('Número: $numero');
    numero += 2;
  } while (numero <= 5);
  // Salida: Número: 1, 2, 3
  
  //Do While Incrementos Diferentes
  print('\nCiclo Do While Incremento');
  numero = 0;
  do {
    print('Número: $numero');
    numero += 2;
  } while (numero <= 5);
}
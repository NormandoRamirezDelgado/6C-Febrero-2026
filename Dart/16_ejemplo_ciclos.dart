void main() {
  //Hacer un programa que imprima dentro del rango comprendido del 100 al 150 lo siguiente:
  //- Números primos 
  //- Números Impares 
  //- Múltiplos de 7

  //Números Primos
  print('\nNúmeros Primos');
  for (var i = 100; i <= 150; i++) {
    int contador = 0;
    for (var j = 2; j <= i - 1; j++) {
      if (i % j == 0){
        contador++;
      }
    }
    if (contador == 0){
      print('El Número $i es Primo');
    }
  }

  //Números Impares
  print('\nNúmeros Impares');
  for (var i = 101; i < 150; i += 2) {
    print('Número Impar: $i');
  }

  //Múltiplos de 7
  print('\nNúmeros Múltiplos de 7');
  for (var i = 100; i < 150; i++) {
    if (i % 7 == 0){
      print('Número Múltiplo de 7: $i');
        
    }
  }
}
void main() {
  // Forma tradicional de Incremento
  for (int i = 1; i <= 5; i++) {
    print('Iteración $i');
  }
  // Salida: Iteración 1, Iteración 2, etc.

  //Decrementar en el ciclo.
  for (var i = 5; i > 0; i--) {
    print('Iiteración: $i');
  }

  //Alterar el valor de la literal i
  for (var i = 0; i < 10; i++) {
    print('Iteración: $i');
    i++;
  }
  //Otra forma de alterar el incremento
  for (var i = 0; i < 10; i += 2) {
    print('Iteración: $i');
  }


}
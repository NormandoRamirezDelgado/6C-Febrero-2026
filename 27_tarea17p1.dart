/* Hacer un programa que empleando funciones cree una lista de números enteros y la cargue con 10 valores enteros dados por el usuario.
Ya con la lista cargada imprima cada uno de los elementos de dicha lista.*/

import 'dart:io';

List<int> pedirNumeros(List<int> numeros){
  for (var i = 0; i < 10; i++) {
    print('Introducir un Valor Entero:');
    numeros.add(int.parse(stdin.readLineSync()!));
  }
  return numeros;
}

void imprimirLista(List<int> numeros){
  for (var numero in numeros) {
    print('El Valor es: $numero');
  }
}

void main() {
  List<int> numeros = [];
  pedirNumeros(numeros);
  imprimirLista(numeros);
}
void main() {
  //Programa para recorrer una lista de diversas maneras utilizando for in y for. 
  List<String> nombres = [];
  //Recorrer o Iterar la Lista
  for (var nombre in nombres) {
    print(nombre);
  }
  //Buscar un elemento de la Lista
  int posicion = 0;
  for (var nombre in nombres) {
    if (nombre == 'Luisa'){
      print('Nombre encontrado en posición $posicion');
    }
    posicion++;
  }
  //Modificar el valor de un elemento de la lista
  for (var i = 0; i < nombres.length; i++) {
    if (nombres[i] == 'Maria')
      nombres[i] = 'María';
  }

  for (var nombre in nombres) {
    print(nombre);
  }
}
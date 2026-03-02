//Programa que crea una lista de peliculas y una de colores y posteriormente le agrega un valor a cada una, imprime los elementos de una manera enumerada y el tamaño de cada lista.
import 'dart:io';

void cargarLista(List<String> lista, String mensaje){
  for (var i = 0; i < 5; i++) {
    print('Introducir tu $mensaje:');
    lista.add(stdin.readLineSync()!);
  }

}

List<String> agregarDatos(List<String> lista, String mensaje) {
  print('\nAgregar $mensaje:');
  lista.add(stdin.readLineSync()!);
  return lista;
}

void imprimirListas(List<String> lista, String mensaje) {
  print('\nListado de $mensaje:');
  for (var i = 0; i < lista.length; i++) {
    print('${i + 1} - ${lista[i]}');
  }
}

void tamanioListas(List<String> lista, String mensaje) {
  print('\nEl tamaño de la lista de $mensaje es: ${lista.length}');
}

void main() {
  List<String> peliculas = [];
  List<String> colores = [];

  //Cargamos 5 datos en cada Lista
  cargarLista(peliculas, 'Pelicula');
  print('');
  cargarLista(colores, 'Color');

  //Añadir 1 elemento más a cada lista
  agregarDatos(peliculas, 'una Pelicula');
  agregarDatos(colores, 'un Color');

  //Imprimimos los elementos de lista de manera enumerada
  imprimirListas(peliculas, 'Peliculas');
  imprimirListas(colores, 'Colores');

  //Imprimir el Tamaño de cada Lista
  tamanioListas(peliculas, 'Peliculas');
  tamanioListas(colores, 'Colores');
}
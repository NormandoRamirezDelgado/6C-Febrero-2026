void main() {
  List<int> numeros = [10, 20, 20, 30];
  print(numeros);

  // AGREGAR elementos
  numeros.add(40); // Agrega al final: [10, 20, 30, 40]
  print(numeros);
  numeros.addAll([50, 60]);  // Agrega múltiples: [10, 20, 30, 40, 50, 60]
  print(numeros);

  // ELIMINAR elementos
  numeros.remove(20); // Elimina el valor 20
  print(numeros);
  numeros.remove(20); // Elimina el valor 20
  print(numeros);
  numeros.remove(267540); // No da error si no existe
  print(numeros);

  numeros.removeAt(0); // Elimina en índice 0
  print(numeros);

  //Imprimir solo el valor de una posición
  print(numeros[0]);
  print(numeros[2]);

  // CONSULTAR
  print('Tamaño de la Lista: ${numeros.length}'); // Cantidad de elementos
  print('Esta Vacia?: ${numeros.isEmpty}');// ¿Está vacía?
  print('No esta vacia?: ${numeros.isNotEmpty}');// ¿Tiene elementos?

  print('Primer valor: ${numeros.first}');// Primer elemento
  print('Último valor: ${numeros.last}'); // Último elemento

  // BÚSQUEDA
  print('Existe?: ${numeros.contains(40)}'); // ¿Contiene el 40? true/false
  print('Posición: ${numeros.indexOf(480)}'); // ¿En qué posición está 30? Índice
  if (numeros.indexOf(40) >= 0) {
    numeros.removeAt(numeros.indexOf(40));
    print('Elemento borrado');
    print(numeros);
  } else
    print('Número no Existe');

}
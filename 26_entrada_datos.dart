import 'dart:io';

void main() {
  print("¿Cómo te llamas?");
  
  // El '?' es porque el valor puede ser nulo
  String? nombre = stdin.readLineSync();

  print("Hola, $nombre. ¡Mucho gusto!");

  //Introducir valores numericos int o double
  print("Introduce tu edad:");
  
  // Leemos el texto y lo convertimos a entero
  int edad = int.parse(stdin.readLineSync()!);

  print("El año que viene tendrás ${edad + 1} años.");

}
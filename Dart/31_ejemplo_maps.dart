import 'dart:io';

void main() {
  Map<String, String> telefonos = {
    'Juan': '8764521111',
    'María': '8764521222'
  };

  // Buscar
  if (telefonos.containsKey('Juan')) {
    print('Teléfono de Juan: ${telefonos['Juan']}');
  } else 
    print('Contacto No Existe!!!!');

  //Agregar Datos al Diccionario
  String nombre = '';
  for (var i = 0; i < 3; i++) {
    print('Nombre del Contacto:');
    nombre = stdin.readLineSync()!;
    print('Número de Telefono de $nombre:');
    telefonos[nombre] = stdin.readLineSync()!;
  }

  // Iterar
  print('\nRecorrido de un Diccionario:');
  telefonos.forEach((clave, valor){
    print('$clave: $valor');
  });
  print('');
  
}
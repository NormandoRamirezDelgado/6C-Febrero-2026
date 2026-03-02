void main() {
  Map<String, dynamic> usuario = {
    'nombre': 'Roberto',
    'edad': 20,
    'activo': true,
    'calificacion': 8.5
  };

  print(usuario['nombre']); // Roberto
  print(usuario['edad']);  // 20
  print(usuario['activo']); // true
  print(usuario['calificacion']); // 8.5

  print('\nImprimir con ForEach');
  usuario.forEach((llave, valor){
    print('$llave: $valor');
  });
}
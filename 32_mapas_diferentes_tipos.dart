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

  Map<int, dynamic> autobuses = {
    1000 : 'Marco Polo',
    1100 : 189276453,
    3635 : false,
    3835 : 10.0,
  };
}
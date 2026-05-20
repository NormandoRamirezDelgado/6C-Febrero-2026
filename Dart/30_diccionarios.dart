void main() {
  Map<String, int> edades = {
    'Juan'  : 17,
    'María' : 16,
    'Carlos': 18,
  };

  // ACCEDER
  print(edades['Juan']);  // 17
  print(edades['María']); // 16
  print(edades['Maria']); // null

  // AGREGAR si no Existe
  edades['Ana'] = 17;
  //Sobreescribir si ya Existe
  edades['Ana'] = 167;
  print(edades);

  // VERIFICAR
  print(edades.containsKey('Juan')); // ¿Existe la clave?
  print(edades.containsValue(17));   // ¿Existe el valor?

  // ELIMINAR
  edades.remove('Carlos');
  print(edades);
  edades.remove('Pedro');
  print(edades);

  // CONSULTAR
  print(edades.keys);   // Todas las claves
  print(edades.values); // Todos los valores
  print(edades.length);    // Cantidad de pares
  print(edades.isEmpty);   // ¿Vacío?
  
}
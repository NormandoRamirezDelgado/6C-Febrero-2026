void main(){
  //Uso de Constantes debe ser en Maúsculas.
  const NUMERO = 12;
  const REAL = 234234.2345345;
  

  //Con final (no puede cambiar después)
  final fechaActual = DateTime.now();
  print('La Fecha Actual es: $fechaActual');

  
  //Con const (constante en tiempo de compilación)
  const PI = 3.14159;
  const VELOCIDAD_LUZ = 299792458;
  print('Valor de PI: $PI'); //Esto es una interpolación
  // VELOCIDAD_LUZ = 300000000;  // ERROR

  print(VELOCIDAD_LUZ);
  print(NUMERO);
  print(REAL);

}

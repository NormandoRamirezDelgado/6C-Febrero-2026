void main() {
  /*Sentencia IF
  if (condición) {
    // Se ejecuta si la condición es TRUE
  } else {
    // Se ejecuta si la condición es FALSE
  }
  */
  int calificacion = 81;

  String asd = calificacion.toString();

  int valor =  int.parse(asd);
  print(valor);

  //Condición doble
  if (calificacion >= 60) {
    print('º\nAcredito\n');
  } else {
    print('\nNo acredito\n');
  }

  //Condición Simple
  if (calificacion >= 60 && calificacion <= 80) {
    print('\nAlumno regular\n');
  }

  //Condiciones Anidadas.
  if (calificacion >= 90) {
    print('Excelente');
  } else 
      if (calificacion >= 80) {
        print('Muy bien');
      } else 
          if (calificacion >= 70) {
            print('Bien');
          } else {
              print('Necesita mejorar');
          }
  // Salida: Muy bien



}
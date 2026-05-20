class Estudiante {
  String nombre;
  int edad;
  String carrera;

  Estudiante(this.nombre, this.edad, this.carrera);

  
  void mostrarInfo() {
    print('Nombre: $nombre | Edad: $edad | Carrera: $carrera');
  }
}

void main() {
  var alumnoUno = Estudiante('Ana García', 17, 'Programación');
  var alumnoDos = Estudiante('Luis Torres', 18, 'Programación');

  print('');
  alumnoUno.mostrarInfo();
  print('');
  alumnoDos.mostrarInfo();
  print('');
}
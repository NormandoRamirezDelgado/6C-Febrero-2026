import 'dart:io';

List<double> capturaCalificaciones(List<double> calificaciones) {
  for (var i = 0; i < 5; i++) {
    print('In troduce una calificación: ');
    calificaciones.add(double.parse(stdin.readLineSync()!));
  }
  return calificaciones;
}

double promedioCalificaciones(List<double> calificaciones) {
  double suma = 0;
  for (var calificacion in calificaciones) {
    suma += calificacion;
  }
  return suma / calificaciones.length;
}

void mayoresPromedio(List<double> calificaciones, double promedio) {
  for (var calificacion in calificaciones) {
    if (calificacion >= promedio)
    print('Calificación $calificacion Mayor que promedio');
  }
}

void reprobatorias(List<double> calificaciones, double promedio) {
  for (var calificacion in calificaciones) {
    if (calificacion < 6)
    print('Calificación $calificacion Reprobatoria');
  }
}

void main() {
  List<double> calificaciones = [];
  capturaCalificaciones(calificaciones);
  double promedio = promedioCalificaciones(calificaciones);
  print('El Promedio es: $promedio');
  mayoresPromedio(calificaciones, promedio);
  reprobatorias(calificaciones, promedio);
}
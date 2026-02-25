import 'dart:io';

List<double> capturarCalificaciones(List<double> calificaciones) {
  for (var i = 0; i < 5; i++) {
    print('Introducir un Valor doble:');
    calificaciones.add(double.parse(stdin.readLineSync()!));
  }
  return calificaciones;
}

double calcularPromedio(List<double> calificaciones) {
  double suma = 0.0;
  for (var calificacion in calificaciones) {
    suma += calificacion;
  }
  return suma / calificaciones.length;
}

void imprimirMayoresPromedio(List<double> calificaciones, double promedio){
  for (var calificacion in calificaciones) {
    if (calificacion >= promedio) {
      print('La calificacion $calificacion es mayor o igual al Promedio');
    }
  }
}

void imprimirReprobatorias(List<double> calificaciones){
  for (var calificacion in calificaciones) {
    if (calificacion < 6.0) {
      print('La calificacion $calificacion es Reprobatoria');
    }
  }
}

void main() {
  List<double> calificaciones = [];
  capturarCalificaciones(calificaciones);
  double promedio = calcularPromedio(calificaciones);
  imprimirMayoresPromedio(calificaciones, promedio);
  imprimirReprobatorias(calificaciones);
}


/* Sistema de calificaciones por materia

  Map<String, List<int>> calificacionesPorMateria = {
    'Matemáticas': [85, 90, 88],
    'Español': [92, 88, 95],
    'Inglés': [78, 82, 80],
    'Programación': [95, 98, 96]
  };
  
  - Calcula el promedio de cada materia
  - Encuentra la materia con el mejor promedio
  - Encuentra la materia con el peor promedio
  - Imprime reporte completo
*/

void promedioMateria(Map<String, List<int>> calificacionesPorMateria, Map<String, double> promedios){
  // - Calcula el promedio de cada materia
  calificacionesPorMateria.forEach((materia, calificaciones){
    int suma = 0;
    for (var calificacion in calificaciones) {
      suma += calificacion;
    }
    double promedio = suma / calificaciones.length;
    promedios[materia] = promedio;
  });
}

void obtenerMejorPromedio(Map<String, double> promedios) {
  // - Encuentra la materia con el mejor promedio
  double mejorPromedio = 0.0;
  String mejorMateria = '';
  promedios.forEach((materia, promedio){
    if (promedio > mejorPromedio) {
      mejorPromedio = promedio;
      mejorMateria = materia;
    }
  });
  print('\nMATERIA CON MEJOR PROMEDIO: $mejorMateria');
}

void obtenerPeorPromedio(Map<String, double> promedios) {
  // - Encuentra la materia con el peor promedio
  double peorPromedio = 100.0;
  String peorMateria = '';
  promedios.forEach((materia, promedio){
    if (promedio < peorPromedio) {
      peorPromedio = promedio;
      peorMateria = materia;
    }
  });
  print('\nMATERIA CON PEOR PROMEDIO: $peorMateria');
}

void reporteCompleto(Map<String, List<int>> calificacionesPorMateria) {
  // - Imprime reporte completo
  print('\n==== MATERIAS CON SUS CALIFICACIONES ====');
  calificacionesPorMateria.forEach((materia, calificaciones){
    print('Materia: $materia \t- \t$calificaciones');
  });
  print('');

}

void imprimirPromedios(Map<String, double> promedios) {
  print('\n==== MATERIAS CON SUS PROMEDIOS ====');
  promedios.forEach((materia, promedio){
    print('Materia: $materia \t- ${promedio.toStringAsFixed(2)}');
  });
  print('');
}

void main() {
  Map<String, List<int>> calificacionesPorMateria = {
    'Matemáticas'   : [85, 90, 88],
    'Español'       : [92, 88, 95],
    'Inglés'        : [78, 82, 80],
    'Programación'  : [95, 98, 96]
  };

  Map<String, double> promedios = {};

  promedioMateria(calificacionesPorMateria, promedios);
  imprimirPromedios(promedios);
  obtenerMejorPromedio(promedios);
  obtenerPeorPromedio(promedios);
  reporteCompleto(calificacionesPorMateria);
}
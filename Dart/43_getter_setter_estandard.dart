class Estudiante {
  // Atributos privados
  String _nombre;
  double _promedio;
  int    _semestre;
 
  // Constructor
  Estudiante(this._nombre, this._promedio, this._semestre);
 
  // ─── Par getter/setter: nombre ────────────────
  String get nombre => _nombre;

  set nombre(String nuevoValor) {
  if (nuevoValor.trim().length >= 2) {
      _nombre = nuevoValor.trim();
    } else {
      print('Nombre demasiado corto: "$nuevoValor"');
    }
  }
 
  // ─── Par getter/setter: promedio ──────────────
  double get promedio => _promedio;

  set promedio(double nuevoValor) {
    if (nuevoValor >= 0.0 && nuevoValor <= 10.0) {
      _promedio = nuevoValor;
    } else {
      print('Promedio inválido: $nuevoValor. Debe estar entre 0 y 10');
    }
  }
 
  // ─── Par getter/setter: semestre ──────────────
  int get semestre => _semestre;
  
  set semestre(int nuevoValor) {
    if (nuevoValor >= 1 && nuevoValor <= 6) {
      _semestre = nuevoValor;
    } else {
      print('Semestre inválido: $nuevoValor. Debe ser entre 1 y 6');
    }
  }
 
  // ─── Getter calculado (solo lectura) ──────────
  String get situacion {
    if (_promedio >= 9.0) return 'Excelente';
    if (_promedio >= 7.0) return 'Aprobado';
    if (_promedio >= 6.0) return 'En riesgo';
    return 'Reprobado';
  }
 
  void mostrar() {
    print('$_nombre | Semestre: $_semestre | Promedio: $_promedio ($situacion)');
  }
}
 
void main() {
  var estudiante = Estudiante('Carlos Ruiz', 8.5, 3);
  estudiante.mostrar();
 
  estudiante.promedio = 9.2;      // ✅ OK
  estudiante.semestre = 15;       // ❌ Semestre inválido: 15
  estudiante.nombre = 'A';        // ❌ Nombre demasiado corto
  estudiante.nombre = 'Ana Gómez';// ✅ OK
  estudiante.mostrar();

}

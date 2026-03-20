class Empleado {
  String _nombre;
  double _salario;
  String _rfc;
 
  Empleado(this._nombre, this._salario, this._rfc);
  
  // Getters simples
  String get nombre  => _nombre;   // Lee _nombre
  double get salario => _salario;  // Lee _salario
  // Nota: NO hay getter para _rfc — es completamente privado
}
 
void main() {
  var empleado = Empleado('Laura Pérez', 12000.0, 'PELJ980415XXX');
 
  print(empleado.nombre);      // Laura Pérez  ← usa el getter
  print(empleado.salario);     // 12000.0      ← usa el getter
  // print(empleado.rfc);      // Error: el getter no existe
  // print(empleado._rfc);     // Error si es otro archivo
}

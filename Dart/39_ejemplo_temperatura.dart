class Temperatura {
  // Privado: evita que se asignen valores sin validación
  double _grados;
 
  // Constructor: usa this._grados para asignar al privado
  Temperatura(this._grados);
 
  // Método público: la única forma de ver el valor
  void mostrar() {
    print('\nTemperatura: $_grados °C\n');
  }
}
 
void main() {
  var temperatura = Temperatura(25.5);
  temperatura.mostrar();
 
  // print(temperatura._grados);  // Error si estás en otro archivo
}

class Bicicleta {
  // Atributos Públicos - Solo identificadores sin Riesgo
  String marca;
  String modelo;
  String color;

  // Atributos Privados - Datos sensibles o de conrtrol interno.
  double _precioPorHora;
  String _numeroSerie;
  int _rentasRealizadas;
  bool _estaRentada;

  // El constructor recibe los datos iniciales.
  Bicicleta(this.marca, this.modelo, this.color, this._precioPorHora) 
    : _numeroSerie = 'HDSLHJ3HJHSE412', 
      _rentasRealizadas = 0, 
      _estaRentada = false;

  void mostrar() {
    print('\n$marca | $modelo | $color | $_numeroSerie | '
      '\$$_precioPorHora/hora | Rentas: $_rentasRealizadas | '
      'Disponible: ${!_estaRentada}\n');
  }  
}

void main() {
  var bicicletaUno = Bicicleta('Trek', 'Marlin Cinco', 'Rojo', 50.0);
  var bicicletaDos = Bicicleta('Giant', 'Apache', 'Azul', 40.0);

  bicicletaUno.mostrar();
  bicicletaDos.mostrar();
}
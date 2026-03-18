class Vehiculo {
  String marca;
  String tipo;
  int anio;

  // Constructor principal
  Vehiculo(this.marca, this.tipo, this.anio);

  // Constructor nombrado: vehículo genérico
  Vehiculo.generico() : marca = 'Desconocida', tipo = 'Auto', anio = 2000;

  // Constructor nombrado: solo marca y año (asume tipo 'Moto')
  Vehiculo.moto(this.marca, this.anio) : tipo = 'Moto';

  Vehiculo.camioneta(this.marca, this.anio) : tipo = 'Camioneta';

  Vehiculo.anio(this.marca, this.tipo) : anio = 2027;

  void mostrar() {
    print('$marca - $tipo ($anio)');
  }
}
void main() {
  var vehiculoUno = Vehiculo('Honda', 'Auto', 2022);
  var vehiculoDos = Vehiculo.generico();
  var vehiculoTres = Vehiculo.moto('Yamaha', 2021);
  var vehiculoCuatro = Vehiculo.camioneta('Chevrolet', 2026);
  var vehiculoCinco = Vehiculo.anio('Ford', 'Van');

  vehiculoUno.mostrar(); // Honda - Auto (2022)
  vehiculoDos.mostrar(); // Desconocida - Auto (2000)
  vehiculoTres.mostrar(); // Yamaha - Moto (2021)
  vehiculoCuatro.mostrar(); // Chevrolet - Camioneta (2026)
  vehiculoCinco.mostrar(); // Ford - Van (2027)
}
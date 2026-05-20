// Diagrama resultante:
//       Vehiculo
//      /        \
// Automovil   Motocicleta

// PASO 1: La superclase — lo que tienen TODOS los vehículos
class Vehiculo {
  String marca;       // ← atributo común
  int    velocidadMaxima; // ← atributo común

  Vehiculo(this.marca, this.velocidadMaxima); // ← constructor

  void arrancar() => print("$marca arrancando...");

  void detener()   => print("$marca detenido.");
}

// PASO 2: La subclase — hereda Vehiculo y agrega lo propio
class Automovil extends Vehiculo {
  int numeroPuertas;   // ← atributo EXCLUSIVO de Automovil

  Automovil(super.marca, super.velocidadMaxima, this.numeroPuertas);// ← inicializa atributos del padre

  void abrirMaletero() => print("Maletero del $marca abierto."); // ↑ usa 'marca' heredado de Vehiculo
}

class Motocicleta extends Vehiculo {
  bool tieneSidecar;

  Motocicleta(String marca, int velocidadMaxima, this.tieneSidecar) : super(marca, velocidadMaxima);

  void hacerCaballito() => print("🏍️ ¡Caballito con $marca!");
}




// PASO 3: En main() — probamos todo
void main() {
  var automovil = Automovil("Toyota", 180, 4);

  // Métodos heredados de Vehiculo:
  automovil.arrancar();         // → "Toyota arrancando..."
  automovil.detener();          // → "Toyota detenido."

  // Método propio de Automovil:
  automovil.abrirMaletero();   // → "Maletero del Toyota abierto."
  var motocicleta = Motocicleta("Honda", 220, false);

  motocicleta.arrancar(); // heredado de Vehiculo → "Honda arrancando..."
  motocicleta.hacerCaballito(); // propio de Motocicleta
}
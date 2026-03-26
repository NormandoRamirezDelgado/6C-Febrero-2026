class Animal {
  String nombre;
  int edad;

  Animal(this.nombre, this.edad);

  void respirar() => print("$nombre está respirando...");

  void presentarse() => print("\nSoy $nombre y tengo $edad años.");
}

class Perro extends Animal {
  String raza;

  Perro(String nombre, int edad, this.raza) : super(nombre, edad);
  
  void ladrar() => print("\n¡Guau! Soy $nombre, soy un $raza.\n");
}

void main() {
  var miPerro = Perro("Max", 3, "Labrador");

  miPerro.presentarse(); // ← heredado
  miPerro.ladrar();      // ← propio de Perro
}
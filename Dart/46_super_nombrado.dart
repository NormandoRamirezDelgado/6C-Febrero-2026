class Animal {
  String nombre;

  Animal(this.nombre);

  Animal.sinNombre() : nombre = "Desconocido";
}

class Pez extends Animal {
  String especie;

  Pez(String nombre, this.especie) : super(nombre);

  Pez.anonimo(this.especie) : super.sinNombre();
}
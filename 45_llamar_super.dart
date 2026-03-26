class Figura {
  String color; 
  bool esRellena;

  Figura(this.color, this.esRellena);

  void describir() {
    print("Figura $color ${esRellena ? 'rellena' : 'sin relleno'}");
  }
}

class Rectangulo extends Figura {
  double ancho, alto;

  Rectangulo({required String color, required bool esRellena, required this.ancho, required this.alto}) : super(color, esRellena);
  
  double calcularArea() => ancho * alto;
}


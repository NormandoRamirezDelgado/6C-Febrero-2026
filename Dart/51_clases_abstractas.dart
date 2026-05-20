abstract class FiguraGeometrica {
  String color;

  FiguraGeometrica(this.color);

  // MÉTODOS ABSTRACTOS — sin { } y sin cuerpo
  double calcularArea();           // ← obligatorio implementar en subclases
  double calcularPerimetro();      // ← obligatorio implementar en subclases

  // MÉTODO CONCRETO — tiene cuerpo, se hereda tal cual
  void describir() {
    print("Figura $color | Área: ${calcularArea().toStringAsFixed(2)} | Perímetro: ${calcularPerimetro().toStringAsFixed(2)}");
  }
}

// No se puede instanciar:
// var figura = FiguraGeometrica("rojo"); // ❌ Error de compilación
class Circulo extends FiguraGeometrica {
  double radio;

  Circulo(String color, this.radio) : super(color);

  @override
  double calcularArea() => 3.14159 * radio * radio; // πr²

  @override
  double calcularPerimetro() => 2 * 3.14159 * radio;   // 2πr
}

class Rectangulo extends FiguraGeometrica {
  double ancho, alto;

  Rectangulo(String color, this.ancho, this.alto) : super(color);

  @override
  double calcularArea() => ancho * alto;          // base × altura

  @override
  double calcularPerimetro() => 2 * (ancho + alto); // 2(a+b)
}

void main() {
  var circulo = Circulo("azul", 5.0);
  var rectangulo = Rectangulo("rojo", 4.0, 3.0);

  circulo.describir();   // ← método concreto heredado → "Figura azul | Área: 78.54"
  rectangulo.describir();   // ← mismo método heredado → "Figura rojo | Área: 12.00"
}
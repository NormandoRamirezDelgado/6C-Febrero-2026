class Padre {

  void saludar() => print("Hola, soy el Padre.");
}

class Hijo extends Padre {

  @override  // ← le avisa a Dart que esto reemplaza la versión del padre
  void saludar() => print("¡Hola! Yo soy el Hijo. 👋");
                         // ↑ misma firma (nombre, parámetros, tipo de retorno)
}

void main() {
  var objetoPadre = Padre();
  var objetoHijo = Hijo();

  objetoPadre.saludar(); // → "Hola, soy el Padre."
  objetoHijo.saludar(); // → "¡Hola! Yo soy el Hijo. 👋"  ← versión sobreescrita
}
class Galleta {
  // Estos son los ATRIBUTOS: propiedades que tendrá cada galleta
  String sabor;
  String forma;
  bool tieneGlaseado;
 
  Galleta(
    this.sabor, 
    this.forma, 
    this.tieneGlaseado
  ); // Este es el CONSTRUCTOR: la receta para hacer una galleta
 
  // Este es un MÉTODO: algo que puede 'hacer' la galleta
  void describir() {
    String glaseado = this.tieneGlaseado ? "con glaseado" : "sin glaseado";
    print("\nGalleta $forma de $sabor, $glaseado.");
  }
}
 
// ══ LOS OBJETOS: instancias reales creadas a partir del molde ══
void main() {
  // Cada 'new Galleta(...)' crea UN objeto diferente en memoria
  // Creando un Objetos a través de una Instancia.
  var galletaUno  = Galleta('vainilla', 'estrella', true);
  var galletaDos  = Galleta('chocolate', 'círculo', false);
  var galletaTres = Galleta('canela', 'árbol', true);
 
  // Los tres objetos son INDEPENDIENTES entre sí
  galletaUno.describir(); // Galleta estrella de vainilla, con glaseado.
  galletaDos.describir(); // Galleta círculo de chocolate, sin glaseado.
  galletaTres.describir(); // Galleta árbol de canela, con glaseado.
 
  // Podemos acceder y modificar atributos de cada objeto por separado
  galletaUno.sabor = 'limón';  // Solo cambia galleta1
  galletaUno.describir(); // Galleta estrella de limón, con glaseado.
}

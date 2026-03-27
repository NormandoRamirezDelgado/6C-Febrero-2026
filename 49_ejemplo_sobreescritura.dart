class Cliente {
  String nombre;
  double totalCompra;

  Cliente(this.nombre, this.totalCompra);

  double calcularDescuento() => 0.0; // ← cliente genérico: sin descuento

  void mostrarResumen() {
    double descuento = calcularDescuento();
    double montoFinal = totalCompra - (totalCompra * descuento);
    print("Cliente: $nombre");
    print("  Compra: \$${totalCompra.toStringAsFixed(2)}");
    print("  Descuento: ${(descuento*100).toStringAsFixed(0)}% → \$${montoFinal.toStringAsFixed(2)}");
  }
}

// Subclase 1: descuento si la compra supera $1,000
class ClienteVIP extends Cliente {

  ClienteVIP(String nombre, double totalCompra) : super(nombre, totalCompra);

  @override
  double calcularDescuento() => totalCompra > 1000 ? 0.20 : 0.0;
  // ↑ Dart ejecuta ESTA versión para objetos ClienteVIP
}

// Subclase 2: descuento solo si tiene credencial válida
class ClienteEstudiante extends Cliente {
  bool credencialValida;

  ClienteEstudiante(String nombre, double totalCompra, this.credencialValida) : super(nombre, totalCompra);

  @override
  double calcularDescuento() => credencialValida ? 0.15 : 0.0;
}

void main() {
  var clienteVip = ClienteVIP("Ana", 1500);
  var clienteEstudiante = ClienteEstudiante("Luis", 800, true);

  clienteVip.mostrarResumen();  // Ana: 20% de descuento
  clienteEstudiante.mostrarResumen();  // Luis: 15% de descuento
}
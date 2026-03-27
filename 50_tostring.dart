class Producto{
  String nombre;
  double precio;

  Producto(this.nombre, this.precio);

  @override
  String toString() => "Producto[$nombre] — \$${precio.toStringAsFixed(2)}";
}

void main() {
  var producto = Producto("Laptop", 12999.99);

  print(producto);          // → Producto[Laptop] — $12999.99
  print(producto.toString());// → Producto[Laptop] — $12999.99
}
class ProductoTienda {
  String _nombre;
  double _precioOriginal;
  double _porcentajeDescuento;  // 0 a 100
  int _stock;
 
  ProductoTienda(this._nombre, this._precioOriginal, this.       _porcentajeDescuento, this._stock);
 
  // ─── Getters simples ──────────────────────────
  String get nombre => _nombre;
  int    get stock  => _stock;
 
  // ─── Getters calculados ───────────────────────
 
  // Calcula el descuento en pesos
  double get montoDescuento =>
      _precioOriginal * (_porcentajeDescuento / 100);
 
  // Calcula el precio con descuento aplicado
  double get precioFinal =>
      _precioOriginal - montoDescuento;
 
  // Devuelve texto legible del descuento
  String get descuentoTexto =>
      '${_porcentajeDescuento.toStringAsFixed(0)}% OFF';
      
  // Lógica para el status del inventario
  String get statusStock {
    if (_stock == 0)   return 'Agotado';
    if (_stock < 5)    return 'Últimas piezas';
    if (_stock < 20)   return 'Stock limitado';
    return 'Disponible';
  }

  // Etiqueta completa para mostrar en pantalla
  String get etiqueta =>
    '$_nombre | \$${precioFinal.toStringAsFixed(2)} ($descuentoTexto) | $statusStock';
}

void main() {
  var producto = ProductoTienda('Teclado', 650.0, 20.0, 4);

  print(producto.montoDescuento);  // 130.0
  print(producto.precioFinal);     // 520.0
  print(producto.descuentoTexto);  // 20% OFF
  print(producto.statusStock);     // Últimas piezas
  print(producto.etiqueta);        // Teclado | $520.00 (20% OFF) | Últimas piezas

}

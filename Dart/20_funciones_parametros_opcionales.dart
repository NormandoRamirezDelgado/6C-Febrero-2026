// Parámetros opcionales entre []
void mostrarInfo(String nombre, [String ciudad = 'Sin Ciudad']) {
  print('Nombre: $nombre, Ciudad: $ciudad');
}

void main() {
  mostrarInfo('Juan');                    // Ciudad: No especificada
  mostrarInfo('Ana', 'Ciudad de México');  // Ciudad: Ciudad de México
}


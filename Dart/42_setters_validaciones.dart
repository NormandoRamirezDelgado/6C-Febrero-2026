// ignore_for_file: unused_field

class Ejemplo {
  int    _cantidad = 0;
  double _precio   = 0;
  String _nombre   = '';
  String _correo   = '';
  double _porcentaje = 0;

  // Validación de RANGO (número entre mínimo y máximo)
  set cantidad(int nuevoValor) {
    if (nuevoValor >= 0 && nuevoValor <= 1000) 
      _cantidad = nuevoValor;
    else 
      print('Cantidad debe estar entre 0 y 1000');
  }
 
  // Validación de POSITIVO (número mayor a cero)
  set precio(double nuevoValor) {
    if (nuevoValor > 0) 
      _precio = nuevoValor;
    else 
      print('El precio debe ser mayor a 0');
  }
 
  // Validación de TEXTO NO VACÍO
  set nombre(String nuevoValor) {
    if (nuevoValor.trim().isNotEmpty) 
      _nombre = nuevoValor.trim();
    else 
      print('El nombre no puede estar vacío');
  }
 
  // Validación de FORMATO (correo electrónico)
  set correo(String nuevoValor) {
    if (nuevoValor.contains('@') && nuevoValor.contains('.')) {
      _correo = nuevoValor.toLowerCase();
    } else {
      print('Correo inválido: $nuevoValor');
    }
  }
 
  // Validación de PORCENTAJE (0 a 100)
  set porcentaje(double nuevoValor) {
    _porcentaje = nuevoValor.clamp(0, 100); // clamp fuerza el rango sin error
  }
}

void main() {
  var ejemplo = Ejemplo();

  ejemplo.cantidad = 1500;
  ejemplo.precio = -100;
  ejemplo.correo = 'juanita@gmail.com';
  ejemplo.nombre = ' ';
  ejemplo.porcentaje = 156;
}

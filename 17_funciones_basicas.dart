// Función SIN retorno
void saludar() {
  print('Hola, Estoy usando Funciones Básicas en Dart');
}

void imprimirBienvenida(){
  print('Bienvenido a el uso de Funciones Básicas');
}

void main() {
  // Llama función sin retorno
  saludar();          

  for (var i = 0; i < 10; i++) {
    saludar();
  }

  imprimirBienvenida();
}

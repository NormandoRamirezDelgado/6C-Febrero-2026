// Forma tradicional
int multiplicar(int a, int b) {
  return a * b;
}

// Forma flecha (para una sola línea)
int multiplicarFlecha(int a, int b) => a * b;

void main() {

  print(multiplicar(4, 5));  // Salida: 20

  //Llamar la Función de flecha o Arrow Functions
  print(multiplicarFlecha(4, 5));  // Salida: 20

}

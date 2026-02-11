void main() {
  bool esEstudiante = true;
  bool tieneTitulo = false;
  int valor = 28;

  print(valor == 18 || tieneTitulo);
  print(esEstudiante && tieneTitulo);  // AND: false
  //print(esEstudiante || tieneTitulo);  // OR: true
  print(!esEstudiante);                // NOT: false

  /*
  Tabla de verdad AND:
  true  && true   = true
  true  && false  = false
  false && true   = false
  false && false  = false
  */

}
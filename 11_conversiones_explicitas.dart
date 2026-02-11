void main() {
  String variable = '50';

  int numero = int.parse(variable);

  String valor = numero.toString();
  print(valor);

  int numeroUno = 123;
  int numeroDos = 6524200889711234;
  print(numeroDos);

  double dobleUno = numeroUno.toDouble();
  print(dobleUno);

  double dobleDos = 1234523456243563567.86348623487623465;
  int entero = dobleDos.toInt();
  print(dobleDos);
  print(entero);

}
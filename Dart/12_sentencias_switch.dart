void main() {
  String dia = 'sábado';

  switch (dia) {
    case 'lunes':
      print('Inicio de Semana');
      break;
    case 'sábado':
      break;
    case 'viernes':
      print('Casi es fin de semana');
      break;
    case 'domingo':
      print('Fin de Semana');
      break;
    default:
      print('Día inválido!');
  }
  //Salida : Inicio de Semana

  int calificacion = 0;
  switch (calificacion) {
    case >= 0 && <= 5 :
      print('No Suficiente');
      break;
    case 6:
      print('Suficiente');
      break;
    case 7:
      print('Bueno');
      break;
    case 8:
      print('Muy Bueno');
      break;
    case 9:
      print('Sobresaliente');
      break;
    case 10:
      print('Excelente');
      break;

  }
}
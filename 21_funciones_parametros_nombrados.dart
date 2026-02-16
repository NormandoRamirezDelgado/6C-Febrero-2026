void crearUsuario({
  required nombre, 
  required edad, 
  required rol
}) {
  print('Usuario: $nombre, Edad: $edad, Rol: $rol');
}

void main() {
  crearUsuario(nombre: 'Luis', edad: 25, rol: 'Admin');
  crearUsuario( rol:'admin', edad: 19, nombre: 'Laura');
  crearUsuario(nombre: 15, edad: 'Juan', rol: 'Admin');

}

void main() {
  // Dart es de tipado estricto, pero se puede indicar que sea flexible
  // Flexible: var nombre = 'Tony;

  // String
  String nombre = 'Tony';
  String apellido = 'Stark';

  nombre = 'Petter';

  // Final
  // Evita que el valor inicial de una variable sea sobre-escrito
  // Se mantiene igual al momento de su primera asignación, puede ser un valor constante o algo que se calcule en tiempo de ejecución (fecha actual de inicio de sessión)
  final DateTime hoy = new DateTime.now();

  // Constante
  // Su valor no va a cambiar en tiempo de compilación o ejecución, es decir, se debe asignar algo meramente constante, un número, letra, pero no la fecha actual de inicio de sesión
  const hola = 'no cambiare';

  // Números
  int empleados = 10;
  double peso = 68.20;

  // Concatenar información
  print(
      'El hombre araña es $nombre $apellido, y pesa $peso klg, en la siguiente fecha $hoy');
}

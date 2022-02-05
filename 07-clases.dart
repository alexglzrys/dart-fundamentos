void main() {
  // Generar una instancia de la clase Heroe - Generalmente se omite el new en Dart
  //final goku = new Heroe();

  // final goku = Heroe('Personaje Dragon Ball', '0');
  final goku = Heroe(poder: '0', nombre: 'Sin nombre');

  // modificar el valor de las propiedades del objeto
  goku.nombre = 'Son Goku';
  goku.poder = '10000';

  print(goku);
}

// Definición de clase
class Heroe {
  // Propidedades
  // El nombre y poder pueden contener valores nulos (parecido a TS ! pero con ?)
  // String? nombre;
  String nombre;
  String poder;

  // Constructor
  // Heroe(this.nombre, this.poder);

  // Mandar argumentos por nombre, y forzar a que sean obligatorios en el constructor
  Heroe({required this.nombre, required this.poder});

  // Hacer algo cuando se requiera imprimir la instancia de esta clase
  @override
  String toString() {
    // Es importante colocar ${this.propiedad} cuando se desea imprimir el nombre de una propiedad
    return 'nombre ${this.nombre} tiene poder de ${this.poder}';
  }
}

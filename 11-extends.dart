void main() {
  final superman = new Heroe('Klar Ken');
  final luthor = new Villano('Luthor', '70');

  print(superman);
  print('Valentía ${superman.valentia}');

  print(luthor);
  print('Nivel de maldad ${luthor.maldad}');
}

abstract class Personaje {
  String? poder;
  String nombre;

  // El poder es opcional, en caso de que no lo evién se coloca 0
  Personaje(String nombre, [String? poder])
      : this.nombre = nombre,
        this.poder = poder ?? '0';

  @override
  String toString() {
    return '$nombre - $poder';
  }
}

class Heroe extends Personaje {
  int valentia = 100;
  // Super permite invocar el constructor de la clase padre (Personaje)
  Heroe(String nombre, [String? poder]) : super(nombre, poder);
}

class Villano extends Personaje {
  int maldad = 50;

  Villano(String nombre, [String? poder]) : super(nombre, poder);
}

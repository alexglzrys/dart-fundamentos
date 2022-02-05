// Clase padre
abstract class Animal {}

// Tipos de animales
abstract class Mamifero extends Animal {}

abstract class Ave extends Animal {}

abstract class Pez extends Animal {}

/**
 * Los Mixin en Dart son parecidos a los Traits de PHP, pero en este caso son clases y no funciones.
 * son clases con lógica implementada que pueden ser inyectadas en diferentes clases relacionadas
 * digamos que son una forma mas de hacer simulaciones de herencia multiple
 */
abstract class Caminar {
  // Las funciones en Dart pueden declarse como en JS
  void caminar() => print('Tengo la habilidad para: Caminar');
}

abstract class Volar {
  void volar() {
    print('Tengo la habilidad para: Volar');
  }
}

abstract class Nadar {
  void nadar() => print('Tengo la habilidad para: Nadar');
}

// Aplicar los mixin a nuestras clases
// Animales mamiferos
class Delfin extends Mamifero with Nadar {}

// Un murcielago tiene dos habilidades
class Murcielago extends Mamifero with Caminar, Volar {}

class Gato extends Mamifero with Caminar {}

// Animales que vuelan
class Paloma extends Ave with Volar, Caminar {}

// Un pato tiene las tres habilidades
class Pato extends Ave with Volar, Nadar, Caminar {}

// Animales acuaticos
class Tiburon extends Pez with Nadar {}

class PezVolador extends Pez with Nadar, Volar {}

void main() {
  final flipper = new Delfin();
  print("FLIPPER");
  flipper.nadar();

  final batman = new Murcielago();
  print('BATMAN');
  batman.caminar();
  batman.volar();

  final lucas = new Pato();
  print('PATO LUCAS');
  lucas.volar();
  lucas.nadar();
  lucas.caminar();
}

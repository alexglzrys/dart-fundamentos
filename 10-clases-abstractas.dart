void main() {
  final perro = Perro();
  final gato = Gato();
  // perro.emitirSonido();

  sonidoAnimal(perro);
  sonidoAnimal(gato);
}

void sonidoAnimal(Animal animal) {
  // dependiendo del animal pasado se emitirá un sonido diferente
  // como todos los animales extienden de la clase abstracta Animal, son tambien de tipo Animal
  animal.emitirSonido();
}

// Nos permite a obligar a otras clases que implementen sus métodos
abstract class Animal {
  int? patas;

  void emitirSonido();
}

// Clase perro que extiende de una clase Abstracta
class Perro extends Animal {
  int? patas;

  void emitirSonido() {
    print('Gouuu');
  }
}

// Clase gato que extiende de una clase Abstracta
class Gato extends Animal {
  int? patas;

  void emitirSonido() {
    print('Miauuu');
  }
}

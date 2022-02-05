import 'dart:math' as math;

void main() {
  final cuadrado = Cuadrado(5);
  print('Área por método: ${cuadrado.calcularArea()}');
  // Accedemos a un valor mediante un getter
  print('Área por getter: ${cuadrado.area}');
  print('Lado del cuadrado: ${cuadrado.lado}');

  // Establecemos un nuevo valor mediante un setter
  cuadrado.area = 100;
  print('Nuevo lado del cuadrado: ${cuadrado.lado}');
  print('Área por getter: ${cuadrado.area}');
}

class Cuadrado {
  double lado = 0;

  // Getter: Permite hacer lógica como un método y retorna un valor. pero su acceso es como si se tratara de una propiedad
  double get area {
    return this.lado * this.lado;
  }

  // Setter: Permite setear un valor a una propiedad de la clase, pero su asignación desde la instancia es como si se tratara de una propiedad
  set area(double valor) {
    // sqrt es un metodo estatico que se encuentra alojado en librería math de Dart, por tanto hay que importarla
    this.lado = math.sqrt(valor);
  }

  // Otra forma de inicializar valores el constructor de la clase
  Cuadrado(double lado) : this.lado = lado;

  // Un método que retorna el área del cuadrado
  double calcularArea() {
    return this.lado * this.lado;
  }
}

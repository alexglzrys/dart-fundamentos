// dynamic en Dart significa tipo de dato dinámico

void main() {
  // Las listas en Dart son arreglos
  // List<E> - Se le puede especificar el tipo de dato que recibe como valor una lista
  List<int> numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  // Las listas tienen métodos
  numeros.add(11);
  // Las listas son de tipo dinámico o genérico por defecto (caso ejemplo JS)
  // List numeros = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  // Pero si se especifica su tipo de dato, estó será imposible de hacer
  // numeros.add('Alex');

  // Las listas en Dart son en base 0, como en la mayoría de los lenguajes de programación
  print(numeros[3]);

  print(numeros);

  // Métodos estáticos
  // Permiten generar tareas sin que sea nesesario instanciar una clase
  // Genera una lista de 100 elementos, por cada posición en la lista, se ejecuta una función que devuelve un valor
  final masNumeros = List.generate(100, (int index) => index);
  print(masNumeros);
}

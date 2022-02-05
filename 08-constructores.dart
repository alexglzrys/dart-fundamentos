void main() {
  // Objeto crudo
  final rawJson = {'nombre': 'Vegeta', 'poder': '50000'};
  // Este objeto le falta el poder, pero como en el constructor por nombre usamos un ?? en el poder, le asigna uno por defecto
  final rawJson2 = {'nombre': 'Goku'};

  // ! indica que Dart debe confiar en mi, siempre va a tener un valor
  final vegeta = Heroe(poder: rawJson['poder']!, nombre: rawJson['nombre']!);
  // Crear una instancia de la clase mediante un constructor por nombre (en este caso se llama fromJson)
  // El cual recibe un mapa como parámetro
  final goku = Heroe.fromJson(rawJson2);

  print(vegeta);
  print(goku);
}

// Definición de clase
class Heroe {
  String nombre;
  String poder;

  Heroe({required this.nombre, required this.poder});

  // Constructores por nombre
  // Se recomienda hacer uso de ?? para indicar a Dart que si el valor es nulo, entonces use uno por defecto
  // Se recomienda evitar el uso de ! a menos de que estemos muy seguros de que el valor existe
  Heroe.fromJson(Map<String, String> json)
      : this.nombre = json['nombre']!,
        this.poder = json['poder'] ?? 'No tiene poder';

  @override
  String toString() {
    return '${this.nombre} tiene un poder de ${this.poder}';
  }
}

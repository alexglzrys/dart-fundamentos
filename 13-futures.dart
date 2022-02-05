/**
 * Los Futures en Dart son como las promesas en JS
 * permiten hacer peticiones HTTP
 */

void main() {
  print('Antes de la petición');

  // Llamar una tarea asincrona (Future)
  httpGet('https://api.nasa.com/aliens').then((data) {
    print(data.toUpperCase());
  });

  print('Después de la petición');
}

// Este Future retorna un string como promesa
Future<String> httpGet(String url) {
  // delayed indica la cantidad de tiempo que le tomará esta tarea
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hola mundo - 3 segudos';
  });
}

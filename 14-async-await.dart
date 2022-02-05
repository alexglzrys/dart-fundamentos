void main() async {
  print('Antes de la petición');

  // Llamar una tarea asincrona con Async - Await
  final nombre = await httpGet('https://api.nasa.com/aliens');
  print(nombre.toUpperCase());

  // Esta linea se ejecuta después de que se ejecute la anterior
  print('Después de la petición');
}

Future<String> httpGet(String url) {
  return Future.delayed(Duration(seconds: 3), () {
    return 'Hola mundo - 3 segudos';
  });
}

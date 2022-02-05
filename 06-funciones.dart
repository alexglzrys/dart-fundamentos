void main() {
  final String nombre = 'Alejandro González Reyes';

  // Invocar una función con un parámetro
  saludar(nombre);
  saludarOpcional(nombre);
  // saludarSinImportarOrdenArgumentos(saludo: 'Vp');
  // saludarSinImportarOrdenArgumentos(nombre: 'Paisa');
  saludarSinImportarOrdenArgumentos(saludo: 'Hola cuate', nombre: 'Alex');
}

// Una función que no retorna nada y recibe un valor como argumento
void saludar(String nombre) {
  print('Hola mundo $nombre');
}

// Los argumentos pueden ser opcionales si se encierran entre corchetes con su valor por defecto
// Los valores primitivos son pasados por valor
// Los objetos son pasados por referencia
// Si un valor puede ser nulo, se coloca el ? ... String? nombre
void saludarOpcional(String nombre, [String saludo = 'Hola']) {
  print('$saludo $nombre');
}

// void saludarSinImportarOrdenArgumentos({saludo, nombre}) {   // Argumentos opcionales, no importa el orden en como los manden funcion(nombre: 'hola', saludo:'Hi)
// void saludarSinImportarOrdenArgumentos({saludo = 'Que onda', nombre}) {  // Argumentos opcionales, pero si mandan el valor se coloca uno por defecto
// Argumentos requeridos, no importa el orden, pero se debe respetar su tipo de dato
void saludarSinImportarOrdenArgumentos(
    {required String saludo, required String nombre}) {
  print('$saludo $nombre');
}

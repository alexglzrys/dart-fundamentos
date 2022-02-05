void main() {
  // Los Map en Dart son objetos literales o diccionarios como en Python

  Map persona = {
    'nombre': 'Alejandro',
    'edad': 36,
    'soltero': true,
    false: 'hola esto se puede hacer',
    1: 'Esto tambien se puede hacer'
  };

  // Se recomienda saber que tipo de dato espera cada path declarado en nuestro objeto
  // Tipo de dato del path, Tipo de dato del valor situado en el path
  Map<String, dynamic> alumno = {
    'nombre': 'Alejandro',
    'edad': 36,
    'soltero': true
  };

  print(persona);

  // Acceder a un valor dentro del mapa
  print(persona['nombre']);
  // Acceder al valor de un path cuyo tipo de dato primitivo, en este caso true.
  print(persona[false]);

  // agregar o modificar el valor de un path
  alumno.addAll({'licenciatura': 'Técnico'});
  print(alumno);
}

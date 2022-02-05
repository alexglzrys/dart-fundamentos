void main() {
  // NullSafety: permite especificar si una variable puede o no tener valores nulos (tener un mejor control del programa)

  // Por ejemplo, en muchos lenguales de programación el nulo se considera como falso
  // Si deseamos aceptar nulos, se coloca ? después del tipo de dato,
  // Es posible que la respuesta sea un booleano o un valor nulo

  bool? isActive = null;

  if (isActive != null || isActive == true) {
    print('Esta activo');
  } else {
    print('No esta activo');
  }
}

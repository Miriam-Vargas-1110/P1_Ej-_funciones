void main() {
  // Crear un Map<int, String> con el número del mes y su nombre
  Map<int, String> meses = {
    1: 'Enero',
    2: 'Febrero',
    3: 'Marzo',
    4: 'Abril',
    5: 'Mayo',
    6: 'Junio',
    7: 'Julio',
    8: 'Agosto',
    9: 'Septiembre',
    10: 'Octubre',
    11: 'Noviembre',
    12: 'Diciembre'
  };

  // Recorrer el mapa e imprimir todos los pares clave-valor
  print('Meses del año:');
  //usando forEach
  meses.forEach((numero, nombre) {
    print('$nombre');
  });

  // Acceder a un valor específico usando la clave
  int mesBuscado = 5;
  print('\nEl mes $mesBuscado es: ${meses[mesBuscado]}');

  // Verificar si un mes existe en el mapa
  if (meses.containsKey(mesBuscado)) {
    print('El mes $mesBuscado existe en el mapa.');
  } else {
    print('El mes $mesBuscado no existe en el mapa.');
  }


  
}
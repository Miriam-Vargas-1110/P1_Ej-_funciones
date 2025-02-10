void saludar(String nombre, String mensaje) {
  print('Hola $nombre $mensaje');
}

double calcularArea(double medida1, double medida2) {
  return medida1 * medida2;
}

void main() {
  print('Miriam Vargas Carrillo :22308051281110');
  print('llamando a la funcion saludar');
  saludar('Ale', 'como estas?');
  print('llamando a la funcion calcularArea');
  double area = calcularArea(10, 20);
  print('El area es $area');
}
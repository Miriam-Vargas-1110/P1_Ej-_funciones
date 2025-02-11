import 'dart:io';
// Función para capturar los datos de la lista
List<String> capturarDatos() {
  List<String> listaCadenas = [];
  print("Ingrese las cadenas (escriba 'fin' para terminar):");

  while (true) {
    String entrada = stdin.readLineSync()!.trim();
    if (entrada.toLowerCase() == 'fin') {
      break; // Termina la captura si el usuario escribe 'fin'
    }
    listaCadenas.add(entrada); // Agrega la cadena a la lista
  }

  return listaCadenas;
}

// Función para mostrar los elementos y contar las palabras
void mostrarYContar(List<String> listaCadenas) {
  print("\nElementos de la lista:");
  int totalPalabras = 0;

  for (String cadena in listaCadenas) {
    print(cadena); // Muestra cada cadena
    totalPalabras += cadena.split(' ').length; // Cuenta las palabras en la cadena
  }

  print("\nTotal de palabras en todas las cadenas: $totalPalabras");
}

void main() {
  // Captura los datos de la lista
  List<String> listaCadenas = capturarDatos();
  print("--------------------");
  print("Miriam Vargas Carrillo: 22308051281110");
  // Muestra los elementos y cuenta las palabras
  mostrarYContar(listaCadenas);
}
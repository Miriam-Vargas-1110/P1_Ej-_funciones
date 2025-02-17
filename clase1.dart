class Persona {
  // Atributos (propiedades)
  String nombre;
  int edad;

  // Constructor
  Persona(this.nombre, this.edad);

  // Función (método) para mostrar información de la persona
  void cumplirAnos() {
    edad++;
    print('¡Feliz cumpleaños! ahora  tengo $edad años.');
  }

  // Función (método) para saludar
  void saludar() {
    print('Hola, mi nombre es $nombre y tengo $edad años.');
  }

}


void main() {
    print('Miriam Vargas Carrillo:22308051281110');
  // Crear una instancia de la clase Persona
  Persona persona1 = Persona('Miriam Vargas ',17);

  // Acceder a los atributos del objeto
  print('Nombre: ${persona1.nombre}');
  print('Edad: ${persona1.edad}');

  // Llamar a las funciones del objeto
  persona1.saludar();
  persona1.cumplirAnos();

}
class Animal {
  // Atributos
  int idAnimal;
  String nombre;
  String raza;

  // Constructor el nombre de la clase es el mismo que el de la clase
  Animal(this.idAnimal, this.nombre, this.raza);

  // Función comer
  void comer() {
    print('$nombre está comiendo.');
  }//fin metodo comer
}// fin clase animal

class Perro extends Animal {
  // Constructor de Perro que llama al constructor de Animal
  Perro(int idAnimal, String nombre, String raza) : super(idAnimal, nombre, raza);

  // metodo correr
  void correr() {
    print('$nombre está corriendo.');
  }//fin metodo correr

  // metodo dormir
  void dormir() {
    print('$nombre está durmiendo.');
  }//fin metodo dormir
}//fin clase perro

void main() {
  print('Miriam Vargas Carrillo:22308051281110 gpo.6-I');
  // Crear una instancia de Perro
  //nombre del objeto es miPerro
  Perro  copito = Perro(1, 'copito', 'Labrador');

  // Usar las funciones de la clase Animal
  copito.comer();

  // Usar las funciones de la clase Perro
  copito.correr();
  copito.dormir();
}
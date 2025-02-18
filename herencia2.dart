import 'dart:io';

// --------------------------------Clase base Empleados-------------------------------------
class Empleados {
  int idEmpleado;
  String nombres;
  String apellidos;
  String numero;
  String cargo;
  double salario;
  String horario;

  // Constructor
  Empleados(this.idEmpleado, this.nombres, this.apellidos, this.numero,
      this.cargo, this.salario, this.horario);

  // Función para capturar datos desde la entrada del usuario
  void capturarDatos() {
    print("Ingrese el ID del empleado:");
    idEmpleado = int.parse(stdin.readLineSync()!);

    print("Ingrese los nombres del empleado:");
    nombres = stdin.readLineSync()!;

    print("Ingrese los apellidos del empleado:");
    apellidos = stdin.readLineSync()!;

    print("Ingrese el número de contacto del empleado:");
    numero = stdin.readLineSync()!;

    print("Ingrese el cargo del empleado:");
    cargo = stdin.readLineSync()!;

    print("Ingrese el salario del empleado:");
    salario = double.parse(stdin.readLineSync()!);

    print("Ingrese el horario del empleado:");
    horario = stdin.readLineSync()!;
  }
}

// Clase DatosEmpleado que hereda de Empleados
class DatosEmpleado extends Empleados {
  // Constructor
  DatosEmpleado(
      int idEmpleado,
      String nombres,
      String apellidos,
      String numero,
      String cargo,
      double salario,
      String horario)
      : super(idEmpleado, nombres, apellidos, numero, cargo, salario, horario);

  // Función para mostrar los datos del empleado
  void mostrarDatos() {
    print("\nDatos del Empleado:");
    print("ID: $idEmpleado");
    print("Nombres: $nombres");
    print("Apellidos: $apellidos");
    print("Número de contacto: $numero");
    print("Cargo: $cargo");
    print("Salario: \$${salario.toStringAsFixed(2)}");
    print("Horario: $horario");
  }
}

// ----------------------------Clase base Producto-------------------------------------
class Producto {
  int idProducto;
  int idProveedor;
  String nombre;
  String categoria;
  double precio;
  String descripcion;
  String marca;
  int idSucursal;

  // Constructor
  Producto(this.idProducto, this.idProveedor, this.nombre, this.categoria,
      this.precio, this.descripcion, this.marca, this.idSucursal);

  // Función para capturar datos desde la entrada del usuario
  void capturarDatos() {
    print("Ingrese el ID del producto:");
    idProducto = int.parse(stdin.readLineSync()!);

    print("Ingrese el ID del proveedor:");
    idProveedor = int.parse(stdin.readLineSync()!);

    print("Ingrese el nombre del producto:");
    nombre = stdin.readLineSync()!;

    print("Ingrese la categoría del producto:");
    categoria = stdin.readLineSync()!;

    print("Ingrese el precio del producto:");
    precio = double.parse(stdin.readLineSync()!);

    print("Ingrese la descripción del producto:");
    descripcion = stdin.readLineSync()!;

    print("Ingrese la marca del producto:");
    marca = stdin.readLineSync()!;

    print("Ingrese el ID de la sucursal:");
    idSucursal = int.parse(stdin.readLineSync()!);
  }
}

// Clase DatosProducto que hereda de Producto
class DatosProducto extends Producto {
  // Constructor
  DatosProducto(
      int idProducto,
      int idProveedor,
      String nombre,
      String categoria,
      double precio,
      String descripcion,
      String marca,
      int idSucursal)
      : super(idProducto, idProveedor, nombre, categoria, precio, descripcion,
            marca, idSucursal);

  // Función para mostrar los datos del producto
  void mostrarDatos() {
    print("\nDatos del Producto:");
    print("ID del Producto: $idProducto");
    print("ID del Proveedor: $idProveedor");
    print("Nombre: $nombre");
    print("Categoría: $categoria");
    print("Precio: \$${precio.toStringAsFixed(2)}");
    print("Descripción: $descripcion");
    print("Marca: $marca");
    print("ID de la Sucursal: $idSucursal");
  }
}
 //llama-----------------------------------------
void main() {
  print('Miriam Vargas Carrillo:22308051281110 gpo.6-I');
  print('tabla de empleados');
  // Crear una instancia de DatosEmpleado
  DatosEmpleado empleado = DatosEmpleado(0, "", "", "", "", 0.0, "");

  // Capturar datos desde la entrada del usuario
  empleado.capturarDatos();

  // Mostrar los datos del empleado
  empleado.mostrarDatos();

//--------------------------------------------------------------------------------------------
print("\n");
print('tabla de productos');
   // Crear una instancia de DatosProducto
  DatosProducto producto = DatosProducto(0, 0, "", "", 0.0, "", "", 0);

  // Capturar datos desde la entrada del usuario
  producto.capturarDatos();

  // Mostrar los datos del producto
  producto.mostrarDatos();
}
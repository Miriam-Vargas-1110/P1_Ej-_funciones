import 'dart:io'; // Para usar stdin y stdout

class Producto {
  // Atributos
  int idProducto;
  int idProveedor;
  String nombre;
  String categoria;
  double precio;
  String descripcion;
  String marca;
  int idSucursal;

  // Constructor
  Producto({
    required this.idProducto,
    required this.idProveedor,
    required this.nombre,
    required this.categoria,
    required this.precio,
    required this.descripcion,
    required this.marca,
    required this.idSucursal,
  });

  // Función para capturar datos desde la consola
  void captura() {
    print('Ingrese los datos del producto:');

    stdout.write('ID Producto: ');
    idProducto = int.parse(stdin.readLineSync()!);

    stdout.write('ID Proveedor: ');
    idProveedor = int.parse(stdin.readLineSync()!);

    stdout.write('Nombre: ');
    nombre = stdin.readLineSync()!;

    stdout.write('Categoría: ');
    categoria = stdin.readLineSync()!;

    stdout.write('Precio: ');
    precio = double.parse(stdin.readLineSync()!);

    stdout.write('Descripción: ');
    descripcion = stdin.readLineSync()!;

    stdout.write('Marca: ');
    marca = stdin.readLineSync()!;

    stdout.write('ID Sucursal: ');
    idSucursal = int.parse(stdin.readLineSync()!);
  }

  // Función para mostrar los datos del producto
  void mostrarDatos() {
    print('''
    ID Producto: $idProducto
    ID Proveedor: $idProveedor
    Nombre: $nombre
    Categoría: $categoria
    Precio: \$$precio
    Descripción: $descripcion
    Marca: $marca
    ID Sucursal: $idSucursal
    ''');
  }
}

//-------------------- Clase Proveedores --------------------

class Proveedores {
  // Atributos
  int idProveedor;
  String nombre;
  String numero;
  String direccion;
  List<int> idProductos; // Lista de IDs de productos
  double precio;
  String marca;

  // Constructor
  Proveedores({
    required this.idProveedor,
    required this.nombre,
    required this.numero,
    required this.direccion,
    required this.idProductos,
    required this.precio,
    required this.marca,
  });

  // Función para capturar datos desde la consola
  void captura() {
    print('Ingrese los datos del proveedor:');

    stdout.write('ID Proveedor: ');
    idProveedor = int.parse(stdin.readLineSync()!);

    stdout.write('Nombre: ');
    nombre = stdin.readLineSync()!;

    stdout.write('Número de contacto: ');
    numero = stdin.readLineSync()!;

    stdout.write('Dirección: ');
    direccion = stdin.readLineSync()!;

    stdout.write('IDs de productos (separados por comas): ');
    String productosInput = stdin.readLineSync()!;
    idProductos = productosInput.split(',').map(int.parse).toList();

    stdout.write('Precio: ');
    precio = double.parse(stdin.readLineSync()!);

    stdout.write('Marca: ');
    marca = stdin.readLineSync()!;
  }

  // Función para mostrar los datos del proveedor
  void mostrarDatos() {
    print('''
    ID Proveedor: $idProveedor
    Nombre: $nombre
    Número de contacto: $numero
    Dirección: $direccion
    IDs de productos: ${idProductos.join(', ')}
    Precio: \$$precio
    Marca: $marca
    ''');
  }
}


//-------------------- Clase Ventas --------------------

class Ventas {
  // Atributos
  int idVentas;
  List<int> idProductos; // Lista de IDs de productos
  int idCliente;
  int idSucursal;
  int idEmpleado;
  double total;
  String fecha;
  int cantidad;

  // Constructor
  Ventas({
    required this.idVentas,
    required this.idProductos,
    required this.idCliente,
    required this.idSucursal,
    required this.idEmpleado,
    required this.total,
    required this.fecha,
    required this.cantidad,
  });

  // Función para capturar datos desde la consola
  void captura() {
    print('Ingrese los datos de la venta:');

    stdout.write('ID Venta: ');
    idVentas = int.parse(stdin.readLineSync()!);

    stdout.write('IDs de productos (separados por comas): ');
    String productosInput = stdin.readLineSync()!;
    idProductos = productosInput.split(',').map(int.parse).toList();

    stdout.write('ID Cliente: ');
    idCliente = int.parse(stdin.readLineSync()!);

    stdout.write('ID Sucursal: ');
    idSucursal = int.parse(stdin.readLineSync()!);

    stdout.write('ID Empleado: ');
    idEmpleado = int.parse(stdin.readLineSync()!);

    stdout.write('Total: ');
    total = double.parse(stdin.readLineSync()!);

    stdout.write('Fecha (YYYY-MM-DD): ');
    fecha = stdin.readLineSync()!;

    stdout.write('Cantidad: ');
    cantidad = int.parse(stdin.readLineSync()!);
  }

  // Función para mostrar los datos de la venta
  void mostrarDatos() {
    print('''
    ID Venta: $idVentas
    IDs de productos: ${idProductos.join(', ')}
    ID Cliente: $idCliente
    ID Sucursal: $idSucursal
    ID Empleado: $idEmpleado
    Total: \$$total
    Fecha: $fecha
    Cantidad: $cantidad
    ''');
  }
}





void main() {
  print('Miriam Vargas Carrillo:22308051281110');
  print('tabla productos');
  // Crear una instancia de la clase Producto
  Producto producto = Producto(
    idProducto: 0,
    idProveedor: 0,
    nombre: '',
    categoria: '',
    precio: 0.0,
    descripcion: '',
    marca: '',
    idSucursal: 0,
  );

  // Capturar datos desde la consola
  producto.captura();

  // Mostrar los datos del producto
  print('\nDatos del producto capturado:');
  producto.mostrarDatos();


  print('tabla provedores');

  // Crear una instancia de la clase Proveedores
  Proveedores proveedor = Proveedores(
    idProveedor: 0,
    nombre: '',
    numero: '',
    direccion: '',
    idProductos: [],
    precio: 0.0,
    marca: '',
  );

  // Capturar datos desde la consola
  proveedor.captura();

  // Mostrar los datos del proveedor
  print('\nDatos del proveedor capturado:');
  proveedor.mostrarDatos();

  print('tabla ventas');
  // Crear una instancia de la clase Ventas
  Ventas venta = Ventas(
    idVentas: 0,
    idProductos: [],
    idCliente: 0,
    idSucursal: 0,
    idEmpleado: 0,
    total: 0.0,
    fecha: '',
    cantidad: 0,
  );

  // Capturar datos desde la consola
  venta.captura();

  // Mostrar los datos de la venta
  print('\nDatos de la venta capturada:');
  venta.mostrarDatos();

}
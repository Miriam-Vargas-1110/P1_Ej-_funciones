void main() {
  // Crear un Map<String, dynamic> para representar a un cliente
  Map<String, dynamic> cliente = {
    'id': 101,
    'nombres': 'Juan',
    'apellidos': 'Pérez',
    'direccion': 'Calle Falsa 123',
    'numero de telefono': '+52 123 456 7890',
    'ciudad': 'Ciudad de México',
    'estado': 'CDMX',
    'correo': 'juan.perez@example.com',
    'codigo postal': '12345'
  };

  // Mostrar los datos del cliente usando un forEach
  print('Datos del cliente:');
  cliente.forEach((key, value) {
    print('$key: $value');
  });

  // Crear un Map<String, dynamic> para representar a un empleado
  Map<String, dynamic> empleado = {
    'id empleados': 201,
    'nombres': 'Carlos',
    'apellidos': 'González',
    'numeros': '+52 555 123 4567',
    'cargo': 'Desarrollador',
    'salario': 25000.0,
    'horario': 'Lunes a Viernes, 9:00 AM - 6:00 PM'
  };

  // Mostrar los datos del empleado usando un forEach
  print('');
  print('-------------------');
  print('Datos del empleado:');
  empleado.forEach((key, value) {
    print('$key: $value');
  });

  Map<String, dynamic> producto = {
    'id producto': 301,
    'id proveedor': 101,
    'nombre': 'Laptop Gamer',
    'categoria': 'Electrónica',
    'precio': 25000.0,
    'descripcion': 'Laptop de alto rendimiento para juegos',
    'marca': 'XYZ',
    'idsucursal': 1
  };

  // Mostrar los datos del producto usando un forEach
  print('');
  print('-------------------');
  print('Datos del producto:');
  producto.forEach((key, value) {
    print('$key: $value');
  });
}
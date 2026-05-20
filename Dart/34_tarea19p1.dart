/*Descripción: Crea un programa que almacene precios de productos.
Requisitos: 
- Crea mapa: nombre producto → precio 
- Agrega 6 productos 
- Busca el precio de un producto 
- Calcula el precio total si compras 2 unidades de cada uno 
- Calcula el precio promedio 
- Imprime el producto más caro y más barato

Salida esperada:
========== TIENDA DE PRODUCTOS ==========

Productos disponibles:
Laptop: $8500.50
Mouse: $250.00
Teclado: $1200.00
Monitor: $3500.00
Webcam: $850.00
Headset: $1500.00

Precio de Mouse: $250.00

Costo total (2 unidades de cada uno): $31,600.00

Precio promedio de productos: $2,616.75

Producto más caro: Laptop ($8500.50)
Producto más barato: Mouse ($250.00)*/

import 'dart:io';

void agregarProductos(Map<String, double> productos) {
    // Agrega 6 productos
    for (var i = 0; i < 6; i++) {
        print('Nombre del Producto:');
        String producto = stdin.readLineSync()!;
        print('Precio del Producto: \$');
        productos[producto] = double.parse(stdin.readLineSync()!);
    }
}

void buscaPrecio(Map<String, double> productos) {
    // Busca el precio de un producto 
    print('Nombre del Producto a Buscar:');
    String productoBuscar = stdin.readLineSync()!;
    productos.forEach((clave, valor){
        if (clave == productoBuscar) {
            print('\nPrecio de $clave: \$$valor');
        }
    });
}

void precioTotal(Map<String, double> productos) {
    // Calcula el precio total si compras 2 unidades de cada uno
    double suma = 0.0;
    productos.forEach((clave, valor){
        suma += valor * 2;
    });
    print('\nCosto total (2 unidades de cada uno): \$$suma');
}

void precioPromedio(Map<String, double> productos) {
    double suma = 0.0;
    productos.forEach((clave, valor){
        suma += valor;
    });
    double promedio = suma / productos.length;
    print('\nPrecio promedio de productos: \$$promedio');
}

void caroBaratoProducto(Map<String, double> productos) {
    // El Más Caro
    double caro = 0.0;
    String producto = '';
    productos.forEach((clave, valor){
        if (valor > caro) {
            caro = valor;
            producto = clave;
        }
    });
    print('\nProducto más caro: $producto');

    // el más barato
    double barato = caro;
    productos.forEach((clave, valor){
        if (valor < barato) {
            barato = valor;
            producto = clave;
        }
    });
    print('\nProducto más barato: $producto');
}

void imprimirTodo(Map<String, double> productos) {
    print('\n==== TIENDA DE PRODUCTOS ====');
    productos.forEach((clave, valor){
        print('$clave: \$$valor');
    });
}

void main() {
    Map<String, double> productos = {};

    agregarProductos(productos);
    buscaPrecio(productos);
    precioTotal(productos);
    precioPromedio(productos);
    caroBaratoProducto(productos);
    imprimirTodo(productos);
}
import 'package:flutter/material.dart';

// Punto de entrada de la aplicación
void main() {
  runApp(MyApp()); // Ejecuta la app
}

// Widget principal de la aplicación
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaCompraPage(), // Ejercicio: Lista de la Compra
    );
  }
}

// Página de la Lista de la Compra
class ListaCompraPage extends StatefulWidget {
  @override
  _ListaCompraPageState createState() => _ListaCompraPageState();
}

// Estado de la página de la Lista de la Compra
class _ListaCompraPageState extends State<ListaCompraPage> {
  // Controladores de los campos de texto
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController cantidadController = TextEditingController();

  // Lista de productos agregados
  List<String> lista = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de la Compra")), // Título del ejercicio
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Fila con los campos de entrada y botón
            Row(
              children: [
                // Campo para el nombre del producto
                Expanded(
                  flex: 2,
                  child: TextField(
                    controller: nombreController,
                    decoration: InputDecoration(
                      labelText: "Producto",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Campo para la cantidad del producto
                Expanded(
                  flex: 1,
                  child: TextField(
                    controller: cantidadController,
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                      labelText: "Cantidad",
                      border: OutlineInputBorder(),
                    ),
                  ),
                ),
                SizedBox(width: 10),
                // Botón para añadir el producto a la lista
                ElevatedButton(
                  onPressed: () {
                    String nombre = nombreController.text.trim();
                    String cantidad = cantidadController.text.trim();

                    if (nombre.isNotEmpty && cantidad.isNotEmpty) {
                      setState(() {
                        lista.add("$nombre - $cantidad"); // Agrega a la lista
                        nombreController.clear(); // Limpia el campo nombre
                        cantidadController.clear(); // Limpia el campo cantidad
                      });
                    }
                  },
                  child: Text("Añadir"),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Mostrar la lista de productos
            Expanded(
              child: lista.isEmpty
                  ? Center(child: Text("No hay productos aún.")) // Mensaje si está vacía
                  : ListView.builder(
                      itemCount: lista.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(lista[index]), // Muestra el producto
                          trailing: IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              setState(() {
                                lista.removeAt(index); // Elimina el producto
                              });
                            },
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }
}

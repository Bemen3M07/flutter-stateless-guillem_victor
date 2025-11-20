import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ListaCompraPage(),
    );
  }
}

class ListaCompraPage extends StatefulWidget {
  @override
  _ListaCompraPageState createState() => _ListaCompraPageState();
}

class _ListaCompraPageState extends State<ListaCompraPage> {
  final TextEditingController nombreController = TextEditingController();
  final TextEditingController cantidadController = TextEditingController();

  List<String> lista = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Lista de la Compra")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Campos de entrada
            Row(
              children: [
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
                ElevatedButton(
                  onPressed: () {
                    String nombre = nombreController.text.trim();
                    String cantidad = cantidadController.text.trim();

                    if (nombre.isNotEmpty && cantidad.isNotEmpty) {
                      setState(() {
                        lista.add("$nombre - $cantidad");
                        nombreController.clear();
                        cantidadController.clear();
                      });
                    }
                  },
                  child: Text("Añadir"),
                ),
              ],
            ),
            SizedBox(height: 20),
            // Lista de productos
            Expanded(
              child: lista.isEmpty
                  ? Center(child: Text("No hay productos aún."))
                  : ListView.builder(
                      itemCount: lista.length,
                      itemBuilder: (context, index) {
                        return ListTile(
                          title: Text(lista[index]),
                          trailing: IconButton(
                            icon: Icon(Icons.delete, color: Colors.red),
                            onPressed: () {
                              setState(() {
                                lista.removeAt(index); // elimina el elemento
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
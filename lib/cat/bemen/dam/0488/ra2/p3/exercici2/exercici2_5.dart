import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ContadorPage(),
    );
  }
}

class ContadorPage extends StatefulWidget {
  const ContadorPage({super.key});

  @override
  _ContadorPageState createState() => _ContadorPageState();
}

class _ContadorPageState extends State<ContadorPage> {
  int contador = 0;
  int contador2 = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stateful Example")),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly, // para separar bien los dos contadores
          children: [
            // Primer contador + botón
            Column(
              mainAxisSize: MainAxisSize.min, // para que la columna no ocupe todo el alto
              children: [
                Text(
                  "$contador",
                  style: TextStyle(fontSize: 30),
                ), // espacio entre número y botón
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      contador++;
                    });
                  },
                  child: Text("Score"),
                ),
              ],
            ),
            // Segundo contador + botón
            Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "$contador2",
                  style: TextStyle(fontSize: 30),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    setState(() {
                      contador2++;
                    });
                  },
                  child: Text("Score"),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
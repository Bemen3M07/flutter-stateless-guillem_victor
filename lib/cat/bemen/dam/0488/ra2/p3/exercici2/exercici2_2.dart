import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  // Contador inicializado a 0
  int counter = 0;

  // Incrementa el contador
  void increase() {
    setState(() {
      counter++;
    });
  }

  // Decrementa el contador
  void decrease() {
    setState(() {
      counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Exercici 2.2")),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Muestra el número actualizado
              Text(
                "Counter: $counter",
                style: const TextStyle(fontSize: 30),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: increase,
                child: const Text("Incrementar"),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: decrease,
                child: const Text("Decrementar"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
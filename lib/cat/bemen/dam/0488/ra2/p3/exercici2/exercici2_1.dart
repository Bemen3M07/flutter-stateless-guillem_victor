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
  // Variable que guarda el texto que se mostrará en pantalla
  String message = 'Good ?!';

  // Cambia el mensaje a “Good morning”
  void sayMorning() {
    setState(() {
      message = 'Good morning';
    });
  }

  // Cambia el mensaje a “Good night”
  void sayNight() {
    setState(() {
      message = 'Good night';
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Exercici 2.1"),
        ),
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start, // Todo alineado a la izquierda
            children: [
              Text(
                message, // Muestra el texto actual
                style: const TextStyle(fontSize: 24),
              ),

              const SizedBox(height: 20),

              // Botón para Good morning
              ElevatedButton(
                onPressed: sayMorning,
                child: const Text("Morning"),
              ),

              const SizedBox(height: 10),

              // Botón para Good night
              ElevatedButton(
                onPressed: sayNight,
                child: const Text("Night"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

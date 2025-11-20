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
  // Clics totales acumulados
  int totalClicks = 0;

  // Clics desde la última vez que se pulsó RESET
  int partialClicks = 0;

  // Acción del botón CLICK
  void registerClick() {
    setState(() {
      totalClicks++;
      partialClicks++;
    });
  }

  // Acción del botón RESET
  void resetPartial() {
    setState(() {
      partialClicks = 0; // Solo se reinicia el parcial
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text("Exercici 2.3")),
        body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Mostramos los valores
              Text(
                "Clics totals: $totalClicks",
                style: const TextStyle(fontSize: 24),
              ),
              Text(
                "Clics parcials: $partialClicks",
                style: const TextStyle(fontSize: 24),
              ),

              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: registerClick,
                child: const Text("CLICK"),
              ),

              const SizedBox(height: 10),

              ElevatedButton(
                onPressed: resetPartial,
                child: const Text("RESET"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



// Importación del Provider del contador
import 'package:empty/cat/bemen/dam/0488/ra2/p3/providers/counter_provider.dart';

// Importaciones de Flutter y Provider
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

// Importación de la pantalla principal
import '../screens/home_screen.dart';

// Punto de entrada de la aplicación
void main() {
  // Se envuelve la app con ChangeNotifierProvider para usar CounterProvider
  runApp(ChangeNotifierProvider(
    create: (_) => CounterProvider(), // Ejercicio: contador con Provider
    child: const MainApp(),
  ));
}

// Widget principal de la aplicación
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Oculta el banner de debug
      title: 'Provider counter', // Título de la aplicación
      theme: ThemeData(
        primarySwatch: Colors.purple, // Tema principal
      ),
      home: const HomeScreen(), // Ejercicio: pantalla del contador
    );
  }
}

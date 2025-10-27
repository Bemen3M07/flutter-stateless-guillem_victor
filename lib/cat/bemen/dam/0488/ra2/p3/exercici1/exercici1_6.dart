import 'dart:math';
import 'package:flutter/material.dart';

class Message {
  final String author;
  final String body;

  Message(this.author, this.body);
}

void main() {
  runApp(const ConceptApp());
}

class ConceptApp extends StatelessWidget {
  const ConceptApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App Bar',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
      ),
      home: const MessagePage(),
    );
  }
}

class MessagePage extends StatelessWidget {
  const MessagePage({super.key});

  @override
  Widget build(BuildContext context) {
    // Lista de nombres
    final names = [
      "Ellison Curry", "Briggs Willis", "Alexa Murphy", "Cameron Berry",
      "Annabelle Villarreal", "Nikolai Wiley", "Lauryn Morrow", "Kyree Hardy",
      "Wells Wilson", "Luna Foster", "Kayden Taylor", "Sofia Mann",
      "Nehemiah Randall", "Christina Gordon", "Karter Kramer", "Hanna Morales",
      "Megan Delarosa", "Osiris Johnson", "Emma Atkins", "Cason McKee",
      "Kori Walls", "Larry Shepherd",
    ];

    // Texto de los mensajes
    const body = "Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ac vestibulum nunc.";

    // Generar lista de 100 mensajes aleatorios
    final random = Random();
    final messages = List.generate(100, (index) {
      return Message(
        names[random.nextInt(names.length)],
        body,
      );
    });

    return Scaffold(
      appBar: AppBar(title: const Text('Mensajes Aleatorios')),
      body: ListView.builder(
        itemCount: messages.length,
        itemBuilder: (context, index) {
          final msg = messages[index];
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Card(
              elevation: 3,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ListTile(
                title: Text(msg.author, style: const TextStyle(fontWeight: FontWeight.bold)),
                subtitle: Text(msg.body),
              ),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            label: 'Mensajes',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.contacts),
            label: 'Contactos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Ajustes',
          ),
        ],
        currentIndex: 0,
        onTap: (index) {
        },
    ));
  }
}
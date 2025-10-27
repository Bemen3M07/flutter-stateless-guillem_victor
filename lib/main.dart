import 'package:flutter/material.dart';


void main() {
   Contact contact = Contact(
    fullName: 'Marta Casserres',
    email: 'marta@example.com',
    phone: '934578484',
  );
  runApp(MainApp(contact: contact));
}

class Contact {
  String fullName;
  String email;
  String phone;

  Contact({
    required this.fullName,
    required this.email,
    required this.phone,
  });
}

class MainApp extends StatelessWidget {
  final Contact contact;

  const MainApp({super.key, required this.contact});

  @override
  Widget build(BuildContext context) {
    // 5) MaterialApp ya no puede ser const porque depende de `contact`.
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(title: const Text('Contacto')), // texto const porque es estático
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
                CircleAvatar(
                  radius: 60,
                  backgroundImage: NetworkImage(contact.photoUrl),
                ),
                const SizedBox(height: 20),
              // 6) Mostramos los atributos del Contact con interpolación.
              Text('Nombre: ${contact.fullName}'),
              Text('Email: ${contact.email}'),
              Text('Teléfono: ${contact.phone}'),
            ],
          ),
        ),
      ),
    );
  }
}

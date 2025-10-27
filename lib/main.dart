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
        appBar: AppBar(
            title: const Text('Contacto')), // texto const porque es estático
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const CircleAvatar(
                radius: 60,
                backgroundImage: AssetImage('assets/imagen.png'),
              ),
              const SizedBox(height: 20),
              // 6) Mostramos los atributos del Contact con interpolación.
              Text('${contact.fullName}',
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold)),
              FractionallySizedBox(
                widthFactor: 0.3, // ocupa el 30% del ancho disponible
                child: Card(
                  elevation: 4,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            const Icon(Icons.email, color: Colors.blueGrey, size: 15),
                            const SizedBox(width: 8),
                            Expanded(
                              // evita que el email se desborde si es muy largo
                              child: Text(
                                contact.email,
                                style: const TextStyle(fontSize: 12),
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          children: [
                            const Icon(Icons.phone, color: Colors.blueGrey, size: 15),
                            const SizedBox(width: 8),
                            Text(
                              contact.phone,
                              style: const TextStyle(fontSize: 12),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

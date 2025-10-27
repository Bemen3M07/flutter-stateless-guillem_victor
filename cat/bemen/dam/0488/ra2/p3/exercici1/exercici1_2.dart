import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text('Hello World '),
              SizedBox(height: 16), 
              Text('Start learning now'),
              SizedBox(height: 16), 
              ElevatedButton(
                onPressed: null, 
                child: Text('Login'),
              ),
              SizedBox(height: 8), 
              ElevatedButton(
                onPressed: null, 
                child: Text('Register'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


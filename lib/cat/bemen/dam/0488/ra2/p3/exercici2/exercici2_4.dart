import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  runApp(const DiceRollerApp());
}

class DiceRollerApp extends StatefulWidget {
  const DiceRollerApp({super.key});

  @override
  State<DiceRollerApp> createState() => _DiceRollerAppState();
}

class _DiceRollerAppState extends State<DiceRollerApp> {
  final Random random = Random();

  // Lista con todas las imágenes de los dados
  final List<String> diceImages = [
    'assets/diceroller/uno.png',
    'assets/diceroller/dos.png',
    'assets/diceroller/tres.png',
    'assets/diceroller/cuatro.png',
    'assets/diceroller/cinco.png',
    'assets/diceroller/seis.png',
  ];

  // Variables que guardan las imágenes actuales de los dados
  late String dice1;
  late String dice2;

  @override
  void initState() {
    super.initState();
    // Inicializa los dados con números aleatorios al iniciar
    dice1 = diceImages[random.nextInt(6)];
    dice2 = diceImages[random.nextInt(6)];
  }

  // Función que tira los dados
  void rollDice() {
    setState(() {
      int dice1Number = random.nextInt(6);
      int dice2Number = random.nextInt(6);

      dice1 = diceImages[dice1Number];
      dice2 = diceImages[dice2Number];

      // Mostrar JACKPOT si ambos dados son 6
      if (dice1Number == 5 && dice2Number == 5) { // índice 5 = número 6
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('JACKPOT!'),
            duration: Duration(seconds: 2),
          ),
        );
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Dice Roller',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Exercici 2.4 - Dice Roller'),
        ),
        body: Stack(
          children: [
            // Fondo del tapiz
            Image.asset(
              'assets/diceroller/tapestry.png',
              fit: BoxFit.cover,
              width: double.infinity,
              height: double.infinity,
            ),
            Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Fila con los dos dados
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(dice1, width: 100, height: 100),
                      const SizedBox(width: 20),
                      Image.asset(dice2, width: 100, height: 100),
                    ],
                  ),
                  const SizedBox(height: 40),
                  // Botón para tirar los dados
                  ElevatedButton(
                    onPressed: rollDice,
                    child: const Text('ROLL THE DICE'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

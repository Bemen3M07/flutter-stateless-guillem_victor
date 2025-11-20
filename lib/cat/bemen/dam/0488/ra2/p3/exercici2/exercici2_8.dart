import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



// Providers y Widgets
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici2/providers/providers.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici2/widgets/widgets.dart';

// Ejercicios 1
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici1/exercici1_1.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici1/exercici1_2.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici1/exercici1_3.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici1/exercici1_4.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici1/exercici1_5.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici1/exercici1_6.dart';

// Ejercicios 2
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici2/exercici2_1.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici2/exercici2_2.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici2/exercici2_3.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici2/exercici2_4.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici2/exercici2_5.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici2/exercici2_6.dart';
import 'package:empty/cat/bemen/dam/0488/ra2/p3/exercici2/exercici2_7.dart';


class Exercici2_8 extends StatelessWidget {
  const Exercici2_8({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (_) => NavigationProvider(),
      child: const _MainNavigationScreen(),
    );
  }
}

class _MainNavigationScreen extends StatelessWidget {
  const _MainNavigationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final nav = Provider.of<NavigationProvider>(context);

    // LISTA DE PANTALLAS
    final page1Screens = [
      exercici1_1(),
      exercici1_2(),
      exercici1_3(),
      exercici1_4(),
      exercici1_5(),
      exercici1_6(),
    ];

    final page2Screens = [
      exercici2_1(),
      exercici2_2(),
      exercici2_3(),
      exercici2_4(),
      exercici2_5(),
      exercici2_6(),
      exercici2_7(),
    ];

    // LISTA DE TÍTULOS
    final page1Titles = ["1.1", "1.2", "1.3", "1.4", "1.5", "1.6"];
    final page2Titles = ["2.1", "2.2", "2.3", "2.4", "2.5", "2.6", "2.7"];

    // ELEGIMOS LA LISTA SEGÚN LA PÁGINA
    final screen = nav.bottomIndex == 0
        ? page1Screens[nav.topIndex]
        : page2Screens[nav.topIndex];

    final topMenuTitles = nav.bottomIndex == 0 ? page1Titles : page2Titles;

    return Scaffold(
      appBar: AppBar(
        title: const Text("Navegació (Exercici 2.8)"),
        bottom: PreferredSize(
          preferredSize: const Size.fromHeight(50),
          child: TopMenu(
            items: topMenuTitles,
            selectedIndex: nav.topIndex,
            onTap: nav.changeTopIndex,
          ),
        ),
      ),
      body: screen,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: nav.bottomIndex,
        onTap: nav.changeBottomIndex,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.view_carousel),
            label: "Stateless",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.view_agenda),
            label: "Stateful",
          ),
        ],
      ),
    );
  }
}

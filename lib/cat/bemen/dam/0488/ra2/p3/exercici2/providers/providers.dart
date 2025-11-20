import 'package:flutter/material.dart';

class NavigationProvider with ChangeNotifier {
  int bottomIndex = 0; // 0 = página 1, 1 = página 2
  int topIndex = 0;    // ejercicio seleccionado

  void changeBottomIndex(int index) {
    bottomIndex = index;

    // Reiniciamos el selector superior cuando cambiamos de página
    topIndex = 0;

    notifyListeners();
  }

  void changeTopIndex(int index) {
    topIndex = index;
    notifyListeners();
  }
}

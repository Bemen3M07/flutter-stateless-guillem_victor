import 'package:flutter/material.dart';

class TopMenu extends StatelessWidget {
  final List<String> items;
  final int selectedIndex;
  final Function(int) onTap;

  const TopMenu({
    super.key,
    required this.items,
    required this.selectedIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(items.length, (i) {
        return Expanded(
          child: GestureDetector(
            onTap: () => onTap(i),
            child: Container(
              padding: const EdgeInsets.all(12),
              color: selectedIndex == i ? Colors.blue : Colors.grey[300],
              child: Center(
                child: Text(
                  items[i],
                  style: TextStyle(
                    color: selectedIndex == i ? Colors.white : Colors.black,
                  ),
                ),
              ),
            ),
          ),
        );
      }),
    );
  }
}

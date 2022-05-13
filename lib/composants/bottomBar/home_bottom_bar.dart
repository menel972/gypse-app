import 'package:flutter/material.dart';

class HomeBottomBar extends StatelessWidget {
  // =
  final int index;
  final Function(int) switchIndex;

  const HomeBottomBar({
    Key? key,
    required this.index,
    required this.switchIndex,
  }) : super(key: key);

// <> Build
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i) => switchIndex(i),
      items: const [
        BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined), label: 'Accueil'),
        BottomNavigationBarItem(
            icon: Icon(Icons.bar_chart_outlined), label: 'Statistiques'),
        BottomNavigationBarItem(
            icon: Icon(Icons.person_outline), label: 'Mon Compte'),
      ],
    );
  }
}

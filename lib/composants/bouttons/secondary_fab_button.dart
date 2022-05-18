import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:flutter/material.dart';

class SecondaryFabButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback fonction;
  const SecondaryFabButton({
    Key? key,
    required this.icon,
    required this.fonction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Couleur.secondary,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: fonction,
        child: Icon(icon, color: Couleur.orangeClair, size: 25),
      ),
    );
  }
}

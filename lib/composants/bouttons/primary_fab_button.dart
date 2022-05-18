import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:flutter/material.dart';

class PrimaryFabButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback fonction;
  const PrimaryFabButton({
    Key? key,
    required this.icon,
    required this.fonction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Couleur.primary,
        shape: BoxShape.circle,
      ),
      padding: const EdgeInsets.all(5),
      alignment: Alignment.center,
      child: GestureDetector(
        onTap: fonction,
        child: Icon(icon, color: Couleur.orangeClair, size: 40),
      ),
    );
  }
}

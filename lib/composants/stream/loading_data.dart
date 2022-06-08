import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:flutter/material.dart';

class LoadingData extends StatelessWidget {
  const LoadingData({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Couleur.secondary,
      ),
    );
  }
}

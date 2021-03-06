// ignore_for_file: avoid_print

import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:flutter/material.dart';

class LoadingData extends StatelessWidget {
  final String? message;
  const LoadingData({
    Key? key,
    this.message,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print(message);
    return const Center(
      child: CircularProgressIndicator(
        color: Couleur.secondary,
      ),
    );
  }
}

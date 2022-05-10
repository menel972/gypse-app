import 'package:bible_quiz/composants/bouttons/primary_button.dart';
import 'package:bible_quiz/composants/carousels/carousel.dart';
import 'package:bible_quiz/services/enums/livres.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:flutter/material.dart';

import '../../../composants/bouttons/basic_button.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  static final List<String> livres = [
    Livres.gen,
    Livres.apo,
    Livres.cor1,
    Livres.jean,
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            child: Carousel(items: livres),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // TODO : Ajouter les navigations pour les bouttons
                PrimaryButton(
                    texte: 'Commencer une partie',
                    fonction: () => Navigator.pushNamed(context, JeuVue.route,
                        arguments: '')),
                const SizedBox(height: 25),
                BasicButton(texte: 'Choisir un livre', fonction: () {}),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

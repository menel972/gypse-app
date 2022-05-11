import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:flutter/material.dart';

import '../bouttons/small_button.dart';

class LivreCard extends StatelessWidget {
  final String livre;

  const LivreCard({
    Key? key,
    required this.livre,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 1),
            blurRadius: 4,
          ),
          BoxShadow(
            color: Couleur.primary,
            offset: Offset(3, 2),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        gradient: const SweepGradient(
          colors: [
            Couleur.blanc2,
            Couleur.bleu,
            Couleur.violet,
            Couleur.orange,
          ],
          stops: [
            0,
            0.39,
            0.6,
            0.9,
          ],
          center: Alignment(1, 0.2),
          startAngle: -0.8,
          endAngle: 6.5,
        ),
      ),
      child: Column(
        children: [
          SizedBox(height: MediaQuery.of(context).size.height * 0.1),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8.0),
                  child: FittedBox(
                      child:
                          Text(livre.toUpperCase(), style: MyTextStyle.titleM)),
                ),
                SmallButton(
                    texte: 'Jouer',
                    fonction: () => Navigator.pushNamed(context, JeuVue.route,
                        arguments: livre)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

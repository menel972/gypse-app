import 'package:bible_quiz/composants/cards/livres_list_card.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:flutter/material.dart';



class LivresListe extends StatelessWidget {
  // =
  final List<String> livres;
  const LivresListe({Key? key, required this.livres}) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 2,
      childAspectRatio: 1.05,
      children: [
        ...livres.map((livre) {
          return Padding(
            padding: const EdgeInsets.all(8.0),
            // <!> LivreListCard()
            child: LivresListCard(
              livre: livre,
              function: () =>
                  Navigator.pushNamed(context, JeuVue.route, arguments: livre),
            ),
          );
        }),
      ],
    );
  }
}

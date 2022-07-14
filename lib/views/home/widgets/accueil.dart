import 'package:bible_quiz/composants/carousels/carousel.dart';
import 'package:bible_quiz/services/enums/livres.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:bible_quiz/views/livres/livres_vue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../composants/bouttons/basic_button.dart';
import '../../../composants/bouttons/secondary_button.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;

    // = Livres du Carousel
    List<String> getItems() {
      switch (_trad.localeName) {
        case 'en':
          List<String> livres = [...LivresEn.livres];
          livres.shuffle();
          return livres.take(5).toList();
        case 'es':
          List<String> livres = [...LivresEs.livres];
          livres.shuffle();
          return livres.take(5).toList();
        default:
          List<String> livres = [...LivresFr.livres];
          livres.shuffle();
          return livres.take(5).toList();
      }
    }
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            // <!> Carousel()
            child: Carousel(items: getItems()),
          ),
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // <!> JeuVue()
                SecondaryButton(
                  texte: _trad.btn_start,
                  fonction: () =>
                      Navigator.pushNamed(context, JeuVue.route, arguments: ''),
                ),
                const SizedBox(height: 25),
                // <!> LivresVue()
                BasicButton(
                  texte: _trad.btn_livre,
                  couleur: 'orange',
                  fonction: () => Navigator.pushNamed(context, LivresVue.route),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}

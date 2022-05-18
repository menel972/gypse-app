import 'package:bible_quiz/composants/carousels/carousel.dart';
import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/enums/livres.dart';
import 'package:bible_quiz/services/providers/user_provider.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:bible_quiz/views/livres/livres_vue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../composants/bouttons/basic_button.dart';
import '../../../composants/bouttons/secondary_button.dart';
import '../../../services/models/user_model.dart';

class Accueil extends StatelessWidget {
  const Accueil({Key? key}) : super(key: key);

  // = Livres du Carousel
  static final List<String> livres = [
    Livres.gen,
    Livres.apo,
    Livres.cor1,
    Livres.jean,
  ];

  // <> Build
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.4,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 0),
            // <!> Carousel()
            child: Carousel(items: livres),
          ),
        ),
        Expanded(
          child: StreamBuilder<User>(
              stream: UserCrud.getConnectedUser('vKuTvYqJEeSZ8ZrLzxAb'),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return Padding(
            padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // <!> JeuVue()
                        SecondaryButton(
                            texte: 'Commencer une partie',
                            fonction: () => {
                                  Provider.of<UserProvider>(context,
                                          listen: false)
                                      .setUser(snapshot.data!),
                                  Navigator.pushNamed(context, JeuVue.route,
                                      arguments: ''),
                                }),
                const SizedBox(height: 25),
                // <!> LivresVue()
                BasicButton(
                    texte: 'Choisir un livre',
                    couleur: 'orange',
                    fonction: () =>
                        {
                                  Provider.of<UserProvider>(context,
                                          listen: false)
                                      .setUser(snapshot.data!),
                                  Navigator.pushNamed(context, LivresVue.route),
                                }),
              ],
            ),
                  );
                } else if (snapshot.hasError) {
                  // ignore: avoid_print
                  print('get user error : ' + snapshot.error.toString());
                }
                return const Center(
                  child: CircularProgressIndicator(
                    color: Couleur.secondary,
                  ),
                );
              }),
        ),
      ],
    );
  }
}

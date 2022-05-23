import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/providers/user_provider.dart';
import '../bouttons/small_button.dart';

class LivreCard extends StatelessWidget {
  // =
  final String livre;

  const LivreCard({
    Key? key,
    required this.livre,
  }) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    MyUser user = Provider.of<UserProvider>(context).user;
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
        gradient: SweepGradient(
          colors: [
            Couleur.blanc2.withOpacity(1),
            Couleur.bleu.withOpacity(0.2),
            Couleur.violet.withOpacity(1),
            Couleur.orange.withOpacity(1),
          ],
          stops: const [
            0,
            0.39,
            0.6,
            0.9,
          ],
          center: const Alignment(1, 0.2),
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
                      child: Text(livre.toUpperCase(),
                          style: MyTextStyle.titleBleuM)),
                ),
                StreamBuilder<MyUser>(
                    stream: UserCrud.getConnectedUser(user.id),
                    builder: (context, snapshot) {
                      if (snapshot.hasData) {
                        return SmallButton(
                            texte: 'Jouer',
                            fonction: () => {
                                  Provider.of<UserProvider>(context,
                                          listen: false)
                                      .setUser(snapshot.data!),
                                  Navigator.pushNamed(context, JeuVue.route,
                                      arguments: livre),
                                });
                      } else if (!snapshot.hasData) {
                        return const Center(child: Text('no user'));
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
              ],
            ),
          ),
        ],
      ),
    );
  }
}
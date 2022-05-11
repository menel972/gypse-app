import 'package:bible_quiz/services/data.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:flutter/material.dart';

class LivresListe extends StatelessWidget {
  final List<String> livres;
  const LivresListe({Key? key, required this.livres}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ! : LISTVIEW
    return ListView.builder(
        itemCount: livres.length,
        itemBuilder: (context, i) {
          final String livre = livres[i];
          final List<Question> q =
              Data.questions.where((q) => q.livre == livre).toList();
          final int nbQ = q.length;
          final int nbR = q.where((ques) => ques.resultat != null).length;
          return ListTile(
            title: Text(livre,
                style: nbQ != 0 ? MyTextStyle.textS : MyTextStyle.textDisableS),
            trailing: Text(nbR.toString() + ' / ' + nbQ.toString(),
                style: nbQ != 0 ? MyTextStyle.textS : MyTextStyle.textDisableS),
            enabled: nbQ != 0,
            onTap: () =>
                Navigator.pushNamed(context, JeuVue.route, arguments: livre),
          );
        });
  }
}

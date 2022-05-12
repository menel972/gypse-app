import 'package:bible_quiz/composants/bouttons/primary_button.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:bible_quiz/views/jeu/widgets/reponse_card.dart';
import 'package:flutter/material.dart';

import '../../../services/data.dart';

class ReponseVue extends StatefulWidget {
  final String questionId;
  final int niveau;
  final List<bool> select;
  final VoidCallback pauseCountDown;
  final VoidCallback switchFacteur;

  const ReponseVue({
    Key? key,
    required this.questionId,
    required this.niveau,
    required this.select,
    required this.pauseCountDown,
    required this.switchFacteur,
  }) : super(key: key);

  @override
  State<ReponseVue> createState() => _ReponseVueState();
}

class _ReponseVueState extends State<ReponseVue> {
  List<Reponse> get reps =>
      Data.reponses.where((r) => r.questionId == widget.questionId).toList();

  int get trueIndex =>
      reps.indexOf(reps.firstWhere((rep) => rep.confirme == true));

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.48,
      padding: const EdgeInsets.only(
        top: 20,
        bottom: 15,
        left: 15,
        right: 15,
      ),
      decoration: BoxDecoration(
        color: Couleur.bleuClair,
        border: Border.all(color: Colors.black),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: 4,
              itemBuilder: (context, i) {
                final rep = reps[i];
                return GestureDetector(
                  onTap: () {
                    widget.pauseCountDown();
                    setState(() {
                      if (rep.confirme == false) {
                        widget.select[i] = !widget.select[i];
                        widget.select[trueIndex] = !widget.select[trueIndex];
                      } else {
                        widget.select[i] = !widget.select[i];
                      }
                    });
                  },
                  child: ReponseCard(
                    i: i,
                    rep: rep,
                    select: widget.select,
                  ),
                );
              },
            ),
          ),
          Visibility(
            visible: widget.select.contains(true),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              child: PrimaryButton(
                  texte: 'Suivant', fonction: () => widget.switchFacteur()),
            ),
          ),
        ],
      ),
    );
  }
}

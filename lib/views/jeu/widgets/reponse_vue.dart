import 'package:bible_quiz/composants/bouttons/basic_button.dart';
import 'package:bible_quiz/composants/dialogs/verset_modal.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/views/jeu/widgets/reponse_card.dart';
import 'package:blur/blur.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/data.dart';
import '../../../services/providers/settings_provider.dart';

class ReponseVue extends StatefulWidget {
  // =
  final String questionId;
  final CountDownController countDownController;
  final VoidCallback switchFacteur;

  const ReponseVue({
    Key? key,
    required this.questionId,
    required this.countDownController,
    required this.switchFacteur,
  }) : super(key: key);

  @override
  State<ReponseVue> createState() => _ReponseVueState();
}

// <> _ReponseVueState()
class _ReponseVueState extends State<ReponseVue> {
  // = Reponses
  List<Reponse> get reps =>
      Data.reponses.where((r) => r.questionId == widget.questionId).toList();

  int get trueIndex =>
      reps.indexOf(reps.firstWhere((rep) => rep.confirme == true));

  // <> Build
  @override
  Widget build(BuildContext context) {
    Settings settings = Provider.of<SettingsProvider>(context).settings;
    List<bool> select =
        Provider.of<SettingsProvider>(context).getRep(settings.niveau);

    return Container(
      height: MediaQuery.of(context).size.height * 0.5,
      // padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
      decoration: BoxDecoration(
        color: Couleur.bleuClair.withOpacity(0),
        border: Border.all(color: Couleur.blanc2.withOpacity(0.7)),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Blur(
        blur: 3,
        blurColor: Couleur.bleuClair,
        colorOpacity: 0.5,
        borderRadius: BorderRadius.circular(20),
        child: Container(),
        overlay: Padding(
          padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Expanded(
                child: ListView.builder(
                  itemCount: settings.niveau + 1,
                  itemBuilder: (context, i) {
                    final rep = reps[i];
                    return GestureDetector(
                      onTap: () {
                        widget.countDownController.pause();
                        setState(() {
                          if (rep.confirme == false) {
                            select[i] = !select[i];
                            select[trueIndex] = !select[trueIndex];
                          } else {
                            select[i] = !select[i];
                          }
                        });
                      },
                      // <!> ReponseCard()
                      child: ReponseCard(
                        i: i,
                        rep: rep,
                      ),
                    );
                  },
                ),
              ),
              Visibility(
                visible: select.contains(true),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: BasicButton(
                            fonction: () => VersetModal.showVerset(
                                context, reps[trueIndex]),
                            texte: 'Voir le verset'),
                      ),
                      const SizedBox(width: 10),
                      SizedBox(
                        width: MediaQuery.of(context).size.width * 0.2,
                        child: IconButton(
                          icon: const Icon(
                            Icons.keyboard_arrow_right,
                            size: 40,
                            color: Couleur.secondary,
                          ),
                          onPressed: () => widget.switchFacteur(),
                        ),

                        // PrimaryButton(
                        //     texte: 'Suivant',
                        //     fonction: () => widget.switchFacteur()),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'dart:async';

import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/services/providers/settings_provider.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/jeu/widgets/reponse_vue.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

class QuestionVue extends StatefulWidget {
  // =
  final Question ques;
  final CountDownController countDownController;
  final VoidCallback swicthIndex;
  const QuestionVue({
    Key? key,
    required this.ques,
    required this.countDownController,
    required this.swicthIndex,
  }) : super(key: key);

  @override
  State<QuestionVue> createState() => _QuestionVueState();
}

// <> _QuestionVueState()
class _QuestionVueState extends State<QuestionVue> {
  // {} Animation
  double facteur = 0.35;

  // = image niveau
  String getNivIcon(int niv) {
    switch (niv) {
      case 1:
        return 'assets/images/facile.svg';
      case 2:
        return 'assets/images/moyen.svg';
      default:
        return 'assets/images/difficile.svg';
    }
  }

  // <> Build
  @override
  Widget build(BuildContext context) {
    Settings settings = Provider.of<SettingsProvider>(context).settings;
    void allRepToTrue(int niv) =>
        Provider.of<SettingsProvider>(context, listen: false).allRepToTrue(niv);
    void allRepToFalse(int niv) =>
        Provider.of<SettingsProvider>(context, listen: false)
            .allRepToFalse(niv);

    void switchFacteur() {
      setState(() {
        facteur = 0.85;
        Timer(
            const Duration(seconds: 1),
            () => setState(() {
                  allRepToFalse(settings.niveau);
                  widget.swicthIndex();
                  facteur = 0.35;

                  Timer(const Duration(milliseconds: 900), () {
                    widget.countDownController.restart();
                    allRepToFalse(settings.niveau);
                  });
                }));
      });
    }

    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        AnimatedContainer(
          duration: const Duration(seconds: 1),
          height: MediaQuery.of(context).size.height * facteur,
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: Column(
            children: [
              // <> Tire + Difficulté
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Question',
                    style: MyTextStyle.textM,
                  ),
                  SvgPicture.asset(getNivIcon(settings.niveau)),
                ],
              ),
              const Divider(
                color: Couleur.blanc,
                height: 25,
              ),
              // <> Question + Timer
              Row(
                children: [
                  Flexible(
                    flex: 5,
                    child: Text(
                      widget.ques.texte,
                      style: MyTextStyle.textM,
                    ),
                  ),
                  const SizedBox(width: 10),
                  Flexible(
                    flex: 1,
                    child: CircularCountDownTimer(
                      controller: widget.countDownController,
                      duration: settings.chrono,
                      width: 60,
                      height: 60,
                      ringColor: Colors.transparent,
                      fillColor: Couleur.secondary,
                      textStyle: MyTextStyle.textM,
                      onComplete: () => allRepToTrue(settings.niveau),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),

        // <!> ReponseVue()
        ReponseVue(
          questionId: widget.ques.id,
          switchFacteur: switchFacteur,
          countDownController: widget.countDownController,
        ),
      ],
    );
  }
}

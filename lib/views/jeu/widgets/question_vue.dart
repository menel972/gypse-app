import 'dart:async';

import 'package:bible_quiz/services/crud/question_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/jeu/widgets/reponse_vue.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../services/providers/user_provider.dart';

class QuestionVue extends StatefulWidget {
  // =
  final CountDownController countDownController;
  final String? livre;
  const QuestionVue({
    Key? key,
    required this.countDownController,
    this.livre,
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
    Setting settings = Provider.of<UserProvider>(context).userSettings;
    void allRepToTrue(int niv) =>
        Provider.of<UserProvider>(context, listen: false).allRepToTrue(niv);
    void allRepToFalse(int niv) =>
        Provider.of<UserProvider>(context, listen: false)
            .allRepToFalse(niv);

    void switchFacteur(String questionId) {
      setState(() {
        facteur = 0.85;
        Timer(
            const Duration(seconds: 1),
            () => setState(() {
                  allRepToFalse(settings.niveau);
                  // TODO : Switch question
                  facteur = 0.35;

                  Timer(const Duration(milliseconds: 900), () {
                    Provider.of<UserProvider>(context, listen: false)
                        .saveAnsweredQuestion(questionId);
                    widget.countDownController.restart();
                    allRepToFalse(settings.niveau);
                  });
                }));
      });
    }

    final List<dynamic> userQuestions =
        Provider.of<UserProvider>(context).userQuestions;

    return StreamBuilder<Question>(
        stream:
            QuestionCrud.fetchFirstQuestionByUser(userQuestions, widget.livre),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
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
                              snapshot.data!.texte,
                              style: MyTextStyle.textL,
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
                  questionId: snapshot.data!.id,
                  switchFacteur: switchFacteur,
                  countDownController: widget.countDownController,
                ),
              ],
            );
          } else if (!snapshot.hasData) {
            return Center(
              child: Text(
                'no more data',
                style: MyTextStyle.textM,
              ),
            );
          } else if (snapshot.hasError) {
            // ignore: avoid_print
            print('stream error : ' + snapshot.error.toString());
          }
          return const Center(
              child: CircularProgressIndicator(
            color: Couleur.secondary,
          ));
        });
  }
}

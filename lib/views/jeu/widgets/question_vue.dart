import 'dart:async';

import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/jeu/widgets/reponse_vue.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../../services/models/user_model.dart';
import '../../../services/providers/user_provider.dart';

class QuestionVue extends StatefulWidget {
  // =
  final CountDownController countDownController;
  final Question question;
  final MyUser dbUser;
  const QuestionVue({
    Key? key,
    required this.countDownController,
    required this.question,
    required this.dbUser,
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
    // = Provider
    Setting settings = Provider.of<UserProvider>(context).userSettings;
    void allRepToTrue() =>
        Provider.of<UserProvider>(context, listen: false).allRepToTrue();
    void allRepToFalse() =>
        Provider.of<UserProvider>(context, listen: false).allRepToFalse();

    void switchFacteur(MyUser newUser) {
      setState(() {
        facteur = 0.75;
      });
      Timer(
          const Duration(milliseconds: 900),
          () => {
                setState(() {
                  allRepToFalse();
                  facteur = 0.35;
                  UserCrud.updateUser(newUser);
                }),
                Timer(const Duration(milliseconds: 900), () {
                  widget.countDownController.restart();
                  allRepToFalse();
                }),
              });
    }

    if (widget.question.texte == '') {
      return Center(
        child: Text(
          'no more data',
          style: MyTextStyle.textM,
        ),
      );
    }

    return Container(
      height: MediaQuery.of(context).size.height,
      padding: const EdgeInsets.only(top: 50),
      child: Column(
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 900),
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
                    SvgPicture.asset(
                      getNivIcon(settings.niveau),
                      height: 30,
                    ),
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
                        widget.question.id + ' : ' +
                        widget.question.texte,
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
                        onComplete: () => allRepToTrue(),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          // <!> ReponseVue()
          Expanded(
            child: ReponseVue(
              questionId: widget.question.id,
              switchFacteur: switchFacteur,
              countDownController: widget.countDownController,
              dbUser: widget.dbUser,
            ),
          ),
        ],
      ),
    );
  }
}

import 'dart:async';

import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/jeu/widgets/reponse_vue.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class QuestionVue extends StatefulWidget {
  final Question ques;
  final CountDownController countDownController;
  final VoidCallback pauseCountDown;
  final VoidCallback restartCountDown;
  final VoidCallback swicthIndex;
  const QuestionVue({
    Key? key,
    required this.ques,
    required this.countDownController,
    required this.pauseCountDown,
    required this.restartCountDown,
    required this.swicthIndex,
  }) : super(key: key);

  @override
  State<QuestionVue> createState() => _QuestionVueState();
}

class _QuestionVueState extends State<QuestionVue> {
  List<bool> select = [false, false, false, false];

  double facteur = 0.2;

  void switchFacteur() {
    setState(() {
      facteur = 0.75;

      Timer(
          const Duration(milliseconds: 700),
          () => setState(() {
                select = select.map((e) => false).toList();
                widget.swicthIndex();
                widget.restartCountDown();
                facteur = 0.2;
              }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return ListView(
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.only(
            left: 15.0,
            right: 15.0,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Question',
                    style: MyTextStyle.textM,
                  ),
                  const Image(
                    image: AssetImage('assets/images/difficile.png'),
                  ),
                ],
              ),
              const Divider(
                color: Couleur.blanc,
                height: 25,
              ),
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
                      duration: 30,
                      width: 60,
                      height: 60,
                      ringColor: Colors.transparent,
                      fillColor: Couleur.secondary,
                      textStyle: MyTextStyle.textM,
                      onComplete: () => setState(() {
                        select = select.map((e) => !e).toList();
                      }),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        AnimatedContainer(
          duration: const Duration(milliseconds: 700),
          height: MediaQuery.of(context).size.height * facteur,
        ),
        ReponseVue(
          questionId: widget.ques.id,
          niveau: 2,
          select: select,
          pauseCountDown: widget.pauseCountDown,
          switchFacteur: switchFacteur,
        ),
      ],
    );
  }
}

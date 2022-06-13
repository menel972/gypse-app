// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bible_quiz/composants/stream/loading_data.dart';
import 'package:bible_quiz/services/BLoC/bloc_provider.dart';

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
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../services/BLoC/provided/select_reponse_bloc.dart';
import '../../../services/models/user_model.dart';
import '../../../services/providers/user_provider.dart';

class QuestionVue extends StatelessWidget {
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
    final _trad = AppLocalizations.of(context)!;

    // = BLoC
    final bloc = BlocProvider.of<SelectReponseBloc>(context);

    // = Provider
    Setting settings = Provider.of<UserProvider>(context).userSettings;
    void setPrivateUser(MyUser newUser) =>
        Provider.of<UserProvider>(context, listen: false).setUser(newUser);

    void switchFacteur(MyUser newUser) {
      bloc.increaseFacteur();
      Timer(
          const Duration(milliseconds: 900),
          () => {
                bloc.clearFacteur(),
                UserCrud.updateUser(newUser),
                setPrivateUser(newUser),
                Timer(const Duration(milliseconds: 900), () {
                  countDownController.restart();
                }),
              });
    }

    if (question.texte == '') {
      return Center(
        child: Text(
          _trad.err_no_que,
          style: MyTextStyle.textM,
        ),
      );
    }

    return StreamBuilder<double>(
        stream: bloc.facteurStream,
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const LoadingData();
          }
          if (snapshot.hasError) {
            print('Question Vue double error : ${snapshot.error}');
          }
          if (snapshot.hasData) {
            double _facteur = snapshot.data!;
            return Container(
              height: MediaQuery.of(context).size.height,
              padding: const EdgeInsets.only(top: 50),
              child: Column(
                children: [
                  AnimatedContainer(
                    duration: const Duration(milliseconds: 900),
                    height: MediaQuery.of(context).size.height * _facteur,
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
                              _trad.title_que,
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
                                question.texte,
                                style: MyTextStyle.textL,
                              ),
                            ),
                            const SizedBox(width: 10),
                            Flexible(
                              flex: 1,
                              child: CircularCountDownTimer(
                                controller: countDownController,
                                duration: settings.chrono,
                                textFormat: 's',
                                isReverse: true,
                                width: 60,
                                height: 60,
                                ringColor: Colors.transparent,
                                fillColor: Couleur.secondary,
                                textStyle: MyTextStyle.textM,
                                onStart: () => bloc.setAllFalse(),
                                onComplete: () => bloc.setAllTrue(),
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
                      bloc: bloc,
                      questionId: question.id,
                      switchFacteur: switchFacteur,
                      countDownController: countDownController,
                      dbUser: dbUser,
                    ),
                  ),
                ],
              ),
            );
          }
          return const LoadingData();
        });
  }
}

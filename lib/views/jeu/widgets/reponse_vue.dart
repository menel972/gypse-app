import 'package:bible_quiz/composants/bouttons/basic_button.dart';
import 'package:bible_quiz/composants/bouttons/primary_fab_button.dart';
import 'package:bible_quiz/composants/dialogs/verset_modal.dart';
import 'package:bible_quiz/composants/stream/error_stream.dart';
import 'package:bible_quiz/composants/stream/loading_data.dart';
import 'package:bible_quiz/services/BLoC/provided/select_reponse_bloc.dart';
import 'package:bible_quiz/services/crud/reponse_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:bible_quiz/services/models/user_question.dart';
import 'package:bible_quiz/views/jeu/widgets/reponse_false_card.dart';
import 'package:bible_quiz/views/jeu/widgets/reponse_true_card.dart';
import 'package:blur/blur.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../services/providers/user_provider.dart';

class ReponseVue extends StatelessWidget {
  // =
  final SelectReponseBloc bloc;
  final String questionId;
  final CountDownController countDownController;
  final Function(MyUser) switchFacteur;
  final MyUser dbUser;

  const ReponseVue({
    Key? key,
    required this.bloc,
    required this.questionId,
    required this.countDownController,
    required this.switchFacteur,
    required this.dbUser,
  }) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;

    // = Provider
    Setting settings = Provider.of<UserProvider>(context).userSettings;

    return StreamBuilder<List<Reponse>>(
        stream: ReponseCrud.fetchReponseByNiveau(settings.niveau, questionId),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            final reponses = snapshot.data!;
            final trueReponse = reponses.firstWhere((rep) => rep.confirme);
            int trueIndex = reponses.indexOf(trueReponse);

            return Blur(
                blur: 3,
                blurColor: Couleur.bleuClair,
                colorOpacity: 0.5,
                borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
                child: Container(),
                overlay: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
                  child: StreamBuilder<List<bool>>(
                      stream: bloc.selectStream,
                      builder: (context, flux) {
                        final _select = flux.data!;
                        return Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                  padding: const EdgeInsets.all(0),
                                  itemCount: reponses.length,
                                  itemBuilder: (context, i) {
                                    final rep = reponses[i];
                                    return GestureDetector(
                                      onTap: () {
                                        countDownController.pause();

                                        if (_select.contains(true)) return;

                                        if (!rep.confirme) {
                                          bloc.setFalseReponse(i, trueIndex);
                                        }

                                        if (rep.confirme) {
                                          bloc.setTrueReponse(i);
                                        }
                                      },
                                      // <!> ReponseCard()
                                      child: rep.confirme == true
                                          ? ReponseTrueCard(
                                              i: i,
                                              rep: rep,
                                              selected: _select[i],
                                            )
                                          : ReponseFalseCard(
                                              i: i,
                                              rep: rep,
                                              selected: _select[i],
                                            ),
                                    );
                                  }),
                            ),
                            Visibility(
                              visible: _select.contains(true),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 0, horizontal: 15),
                                child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Expanded(
                                      child: BasicButton(
                                        fonction: () => VersetModal.showVerset(
                                          context,
                                          reponses[trueIndex],
                                        ),
                                        texte: _trad.btn_verset,
                                        couleur: 'bleu',
                                      ),
                                    ),
                                    const SizedBox(width: 10),
                                    SizedBox(
                                      width: MediaQuery.of(context).size.width *
                                          0.2,
                                      child: PrimaryFabButton(
                                          icon: Icons.keyboard_arrow_right,
                                          fonction: () {
                                            MyUser newUser = dbUser;
                                            UserQuestion uQ = UserQuestion(
                                              niveau: settings.niveau,
                                              qId: questionId,
                                              valid: _select
                                                      .where((e) => e)
                                                      .length ==
                                                  1,
                                            );
                                            newUser.questions.add(uQ);
                                            switchFacteur(newUser);
                                          }),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        );
                      }),
                ));
          } else if (!snapshot.hasData) {
            return const LoadingData(message: 'No Data');
          } else if (snapshot.hasError) {
            // ignore: avoid_print
            print('stream error : ' + snapshot.error.toString());
            return ErrorStream(
                message: 'reponse_vue get reponse ', flux: snapshot);
          }
          return const LoadingData();
        });
  }
}

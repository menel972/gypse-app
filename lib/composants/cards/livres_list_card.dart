// ignore_for_file: avoid_print

import 'package:bible_quiz/composants/stream/error_stream.dart';
import 'package:bible_quiz/composants/stream/livres/livre_card_loading.dart';
import 'package:bible_quiz/composants/stream/loading_data.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/crud/question_crud.dart';
import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:flutter/material.dart';

import '../../services/enums/couleur.dart';
import '../../services/models/user_model.dart';
import '../../styles/my_text_style.dart';

class LivresListCard extends StatelessWidget {
  // =
  final String livre;

  final VoidCallback function;
  const LivresListCard({
    Key? key,
    required this.livre,
    required this.function,
  }) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    // = Provider

    return StreamBuilder<MyUser>(
        stream: UserCrud.getConnectedUser(AuthCrud.currentUser.uid),
        builder: (context, snap) {
          if (snap.hasData) {
            MyUser dbUser = snap.data!;
            List<dynamic> uQ = dbUser.questions.map((uQ) => uQ.qId).toList();
            return StreamBuilder<Map<String, int>>(
                stream: QuestionCrud.fetchQuestionByBook(livre, uQ),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    final int nbQ = snapshot.data!['nbQ']!;
                    final int nbR = snapshot.data!['nbR']!;
                    return GestureDetector(
                      // <!> JeuVue()
                      onTap: nbQ != 0 ? function : () {},
                      child: Stack(children: [
                        Container(
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                            boxShadow: nbQ != 0
                                ? const [
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
                                  ]
                                : [],
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
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 8.0, vertical: 10),
                                child: FittedBox(
                                    child: Text(livre.toUpperCase(),
                                        style: MyTextStyle.titleM)),
                              ),
                              Text.rich(TextSpan(
                                text: nbR.toString(),
                                style: nbR > 0
                                    ? MyTextStyle.textOrangeS
                                    : MyTextStyle.textS,
                                children: [
                                  TextSpan(
                                    text: ' / ' + nbQ.toString(),
                                    style: MyTextStyle.textS,
                                  ),
                                ],
                              ))
                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: Colors.black.withOpacity(nbQ != 0 ? 0 : 0.3),
                            borderRadius: BorderRadius.circular(20),
                          ),
                        )
                      ]),
                    );
                  } else if (!snapshot.hasData) {
                    return LoadingData(
                      message: snapshot.error.toString(),
                    );
                  } else if (snapshot.hasError) {
                    print('stream error : ' + snapshot.error.toString());
                    return ErrorStream(
                        message: 'livres_list_card data  ', flux: snapshot);
                  }
                  return const LivreCardLoading();
                });
          } else if (!snap.hasData) {
            return const LoadingData(
              message: 'livres_list_card User : No Data',
            );
          } else if (snap.hasError) {
            print('get user error : ' + snap.error.toString());
            return ErrorStream(message: 'livres_list_card User ', flux: snap);
          }
          return const LivreCardLoading();
        });
  }
}

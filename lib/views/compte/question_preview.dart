import 'package:bible_quiz/services/crud/question_crud.dart';
import 'package:bible_quiz/services/crud/reponse_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

class QuestionPreview extends StatefulWidget {
  const QuestionPreview({Key? key}) : super(key: key);

  @override
  State<QuestionPreview> createState() => _QuestionPreviewState();
}

class _QuestionPreviewState extends State<QuestionPreview> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<Question>>(
      stream: QuestionCrud.fetchAllQuestion(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          final List<Question> questions = snapshot.data!;
          return Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  questions.length.toString() + ' questions :',
                  style: MyTextStyle.textS,
                ),
              ),
              Expanded(
                child: ListView.separated(
                  padding: const EdgeInsets.only(
                    top: 8,
                    left: 0,
                    right: 0,
                    bottom: 80,
                  ),
                  itemCount: questions.length,
                  separatorBuilder: (context, i) => const Divider(
                    color: Couleur.blanc,
                  ),
                  itemBuilder: (context, i) {
                    Question question = questions[i];
                    return StreamBuilder<List<Reponse>>(
                        stream:
                            ReponseCrud.fetchReponseByNiveau(3, question.id),
                        builder: (context, snap) {
                          if (snap.hasData) {
                            List<Reponse> reponses = snap.data!;
                            return Dismissible(
                              key: Key(question.id),
                              direction: DismissDirection.endToStart,
                              background: Container(color: Couleur.blanc),
                              secondaryBackground: Container(color: Colors.red),
                              onDismissed: (_) {
                                QuestionCrud.removeQuestion(question.id);
                                ReponseCrud.removeReponse(reponses[0].id);
                                ReponseCrud.removeReponse(reponses[1].id);
                                ReponseCrud.removeReponse(reponses[2].id);
                                ReponseCrud.removeReponse(reponses[3].id);
                              },
                              child: ListTile(
                                leading: Text(
                                  (i + 1).toString() + ' - ' + question.livre,
                                  style: MyTextStyle.textS,
                                ),
                                title: Text(
                                  question.texte,
                                  style: MyTextStyle.textS,
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                            );
                          } else if (!snap.hasError) {
                            // ignore: avoid_print
                            print('reponse error : ' + snap.error.toString());
                          }
                          return const Center(
                            child: CircularProgressIndicator(
                              color: Couleur.secondary,
                            ),
                          );
                        });
                  },
                ),
              ),
            ],
          );
        } else if (!snapshot.hasData) {
          return Center(
              child: Text(
            'Il n\'y a pas de question',
            style: MyTextStyle.textM,
          ));
        } else if (snapshot.hasError) {
          // ignore: avoid_print
          print('all questions error : ' + snapshot.error.toString());
        }
        return const Center(
          child: CircularProgressIndicator(
            color: Couleur.secondary,
          ),
        );
      },
    );
  }
}

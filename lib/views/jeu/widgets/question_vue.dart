import 'package:bible_quiz/services/data.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/views/jeu/widgets/reponse_vue.dart';
import 'package:flutter/material.dart';

class QuestionVue extends StatefulWidget {
  const QuestionVue({Key? key}) : super(key: key);

  @override
  State<QuestionVue> createState() => _QuestionVueState();
}

class _QuestionVueState extends State<QuestionVue> {
  List<Question> ques =
      Data.questions.where((q) => q.resultat == null).toList();

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.all(15),
      children: [
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.3,
          child: Text(ques[0].texte),
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height * 0.7,
          child: ReponseVue(questionId: ques[0].id, niveau: 2),
        ),
      ],
    );
  }
}

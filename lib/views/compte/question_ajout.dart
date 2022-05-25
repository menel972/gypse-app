import 'package:bible_quiz/views/compte/widgets/question_form.dart';
import 'package:bible_quiz/views/compte/widgets/reponse_form_1.dart';
import 'package:bible_quiz/views/compte/widgets/reponse_form_2.dart';
import 'package:bible_quiz/views/compte/widgets/reponse_form_3.dart';
import 'package:bible_quiz/views/compte/widgets/reponse_form_4.dart';
import 'package:flutter/material.dart';

import '../../styles/my_text_style.dart';

class QuestionAjout extends StatefulWidget {
  const QuestionAjout({Key? key}) : super(key: key);

  @override
  State<QuestionAjout> createState() => _QuestionAjoutState();
}

class _QuestionAjoutState extends State<QuestionAjout> {
  static final TextEditingController _questionIdController =
      TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: ListView(
        padding: const EdgeInsets.only(
          top: 0,
          bottom: 30,
          left: 0,
          right: 0,
        ),
        children: [
          Text(
            'Question :',
            style: MyTextStyle.titleS,
          ),
          const QuestionForm(),
          TextFormField(
            controller: _questionIdController,
            onChanged: (_) => setState(() {}),
            decoration: const InputDecoration(labelText: 'Question ID'),
          ),
          Text(
            'Réponse 1 :',
            style: MyTextStyle.titleS,
          ),
          ReponseForm1(
            questionId: _questionIdController.text,
          ),
          Text(
            'Réponse 2 :',
            style: MyTextStyle.titleS,
          ),
          ReponseForm2(
            questionId: _questionIdController.text,
          ),
          Text(
            'Réponse 3 :',
            style: MyTextStyle.titleS,
          ),
          ReponseForm3(
            questionId: _questionIdController.text,
          ),
          Text(
            'Réponse 4 :',
            style: MyTextStyle.titleS,
          ),
          ReponseForm4(
            questionId: _questionIdController.text,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _questionIdController.dispose();
    super.dispose();
  }
}

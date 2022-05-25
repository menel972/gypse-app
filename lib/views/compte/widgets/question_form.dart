import 'package:bible_quiz/services/crud/question_crud.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:flutter/material.dart';

import '../../../composants/bouttons/secondary_fab_button.dart';

class QuestionForm extends StatefulWidget {
  const QuestionForm({Key? key}) : super(key: key);

  @override
  State<QuestionForm> createState() => _QuestionFormState();
}

class _QuestionFormState extends State<QuestionForm> {
  final TextEditingController _questionController =
      TextEditingController();
  final TextEditingController _livreController = TextEditingController();
  void addQuestion() {
    final newQuestion = Question(
        id: '', texte: _questionController.text, livre: _livreController.text);

    QuestionCrud.addQuestion(newQuestion);
  }



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 10),
      child: Column(
        children: [
          TextFormField(
            controller: _questionController,
            decoration: const InputDecoration(
              labelText: 'Question',
            ),
          ),
          TextFormField(
            controller: _livreController,
            decoration: const InputDecoration(
              labelText: 'Livre',
            ),
          ),
          const SizedBox(height: 15),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SecondaryFabButton(
                  icon: Icons.send,
                  fonction: () => {
                        addQuestion(),
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Question enregistrée !'))),
                      }),
            ],
          ),
        ],
      ),
    );
  }
  @override
  void dispose() {
    _questionController.dispose();
    _livreController.dispose();
    super.dispose();
  }
}

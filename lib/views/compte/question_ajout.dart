import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/qr_model.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:flutter/material.dart';

import '../../composants/bouttons/primary_button.dart';
import '../../services/crud/question_crud.dart';
import '../../services/crud/reponse_crud.dart';
import '../../services/enums/my_validators.dart';
import '../../styles/my_input_style.dart';
import '../../styles/my_text_style.dart';

class QuestionAjout extends StatefulWidget {
  const QuestionAjout({Key? key}) : super(key: key);

  @override
  State<QuestionAjout> createState() => _QuestionAjoutState();
}

class _QuestionAjoutState extends State<QuestionAjout> {
  final _formKey = GlobalKey<FormState>();

  Qr newQr = Qr(
    question: Question(
      id: '',
      texte: '',
      livre: '',
    ),
    reponse1: Reponse(
      id: '',
      questionId: '',
      texte: '',
      confirme: true,
      versetRef: '',
      verset: '',
    ),
    reponse2: Reponse(
      id: '',
      questionId: '',
      texte: '',
      confirme: false,
    ),
    reponse3: Reponse(
      id: '',
      questionId: '',
      texte: '',
      confirme: false,
    ),
    reponse4: Reponse(
      id: '',
      questionId: '',
      texte: '',
      confirme: false,
    ),
  );

  void _submit() {
    bool isValid = _formKey.currentState!.validate();
    if (!isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Le formulaire n\'est pas valide'),
            backgroundColor: Colors.red),
      );
    }
    if (isValid) {
      _formKey.currentState!.save();
      String qId = QuestionCrud.addQuestionId(newQr.question);
      ReponseCrud.addReponseId(newQr.reponse1, qId);
      ReponseCrud.addReponseId(newQr.reponse2, qId);
      ReponseCrud.addReponseId(newQr.reponse3, qId);
      ReponseCrud.addReponseId(newQr.reponse4, qId);

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('La question est enregistrée'),
            backgroundColor: Couleur.secondary),
      );
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 5),
      child: Form(
        key: _formKey,
        child: ListView.separated(
          padding: const EdgeInsets.only(
            top: 20,
            bottom: 80,
            left: 10,
            right: 10,
          ),
          separatorBuilder: (context, i) {
            if (i == 0 || i == 2 || i == 4 || i == 8) {
              return const SizedBox(height: 30);
            }
            return const SizedBox(height: 10);
          },
          itemCount: 10,
          itemBuilder: (context, i) => [
            Text(
              'Ajouter une question',
              style: MyTextStyle.titleS,
              textAlign: TextAlign.center,
            ),
            // NOTE : Livre
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                'Livre',
                Icons.menu_book_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators().livreValidator(value),
              onSaved: (value) => newQr.question.livre = value!,
            ),
            // NOTE : Question
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                'Question',
                Icons.contact_support_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators()
                  .limiteValidator(value, texte: 'une question', limite: 130),
              onSaved: (value) => newQr.question.texte = value!,
            ),
            // NOTE : Reference
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                'Référence',
                Icons.insert_link_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) =>
                  MyValidators().isEmpty(value, texte: 'une référence'),
              onSaved: (value) => newQr.reponse1.versetRef = value!,
            ),
            // NOTE : Verset
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                'Verset',
                Icons.short_text_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators()
                  .limiteValidator(value, texte: 'un verset', limite: 200),
              onSaved: (value) => newQr.reponse1.verset = value!,
            ),
            // NOTE : Bonne reponse
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                'Bonne réponse',
                Icons.add_task_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators().limiteValidator(value,
                  texte: 'une bonne réponse', limite: 200),
              onSaved: (value) => newQr.reponse1.texte = value!,
            ),
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                'Réponse 2',
                Icons.question_answer_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators()
                  .limiteValidator(value, texte: 'une réponse', limite: 200),
              onSaved: (value) => newQr.reponse2.texte = value!,
            ),
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                'Réponse 3',
                Icons.question_answer_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators()
                  .limiteValidator(value, texte: 'une réponse', limite: 200),
              onSaved: (value) => newQr.reponse3.texte = value!,
            ),
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                'Réponse 4',
                Icons.question_answer_outlined,
              ),
              textInputAction: TextInputAction.done,
              validator: (value) => MyValidators()
                  .limiteValidator(value, texte: 'une réponse', limite: 200),
              onSaved: (value) => newQr.reponse4.texte = value!,
            ),
            PrimaryButton(texte: 'Enregistrer', fonction: () => _submit()),
          ][i],
        ),
      ),
    );
  }

  @override
  void dispose() {
    _formKey.currentState!.dispose();
    super.dispose();
  }
}

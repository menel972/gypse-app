import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/q_lang.dart';
import 'package:bible_quiz/services/models/qr_model.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/r_lang.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
      fr: QLang(texte: '', livre: ''),
    ),
    reponse1: Reponse(
      id: '',
      questionId: '',
      confirme: true,
      fr: RLang(
        texte: '',
        link: '',
        verset: '',
        versetRef: '',
      ),

    ),
    reponse2: Reponse(
      id: '',
      questionId: '',
      confirme: false,
      fr: RLang(texte: ''),
    ),
    reponse3: Reponse(
      id: '',
      questionId: '',
      confirme: false,
      fr: RLang(texte: ''),
    ),
    reponse4: Reponse(
      id: '',
      questionId: '',
      confirme: false,
      fr: RLang(texte: ''),
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
        SnackBar(
            content: Text(AppLocalizations.of(context)!.snack_save_que),
            backgroundColor: Couleur.secondary),
      );
      _formKey.currentState!.reset();
    }
  }

  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;

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
              _trad.title_add_que,
              style: MyTextStyle.titleS,
              textAlign: TextAlign.center,
            ),
            // NOTE : Livre
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                _trad.title_book,
                Icons.menu_book_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators().livreValidator(value),
              onSaved: (value) => newQr.question.fr.livre = value!,
            ),
            // NOTE : Question
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                _trad.title_que,
                Icons.contact_support_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators()
                  .limiteValidator(value, limite: 130),
              onSaved: (value) => newQr.question.fr.texte = value!,
            ),
            // NOTE : Reference
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                _trad.label_ref,
                Icons.insert_link_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) =>
                  MyValidators().isEmpty(value),
              onSaved: (value) => newQr.reponse1.fr.versetRef = value!,
            ),
            // NOTE : Verset
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                _trad.label_verset,
                Icons.short_text_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators()
                  .limiteValidator(value, limite: 200),
              onSaved: (value) => newQr.reponse1.fr.verset = value!,
            ),
            // NOTE : Bonne reponse
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                _trad.label_true,
                Icons.add_task_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) =>
                  MyValidators().limiteValidator(value, limite: 200),
              onSaved: (value) => newQr.reponse1.fr.texte = value!,
            ),
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                '${_trad.label_rep} 2',
                Icons.question_answer_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators()
                  .limiteValidator(value, limite: 200),
              onSaved: (value) => newQr.reponse2.fr.texte = value!,
            ),
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                '${_trad.label_rep} 3',
                Icons.question_answer_outlined,
              ),
              textInputAction: TextInputAction.next,
              validator: (value) => MyValidators()
                  .limiteValidator(value, limite: 200),
              onSaved: (value) => newQr.reponse3.fr.texte = value!,
            ),
            TextFormField(
              style: MyTextStyle.labelM,
              decoration: MyInputStyle.ajoutInputStyle(
                '${_trad.label_rep} 4',
                Icons.question_answer_outlined,
              ),
              textInputAction: TextInputAction.done,
              validator: (value) => MyValidators()
                  .limiteValidator(value, limite: 200),
              onSaved: (value) => newQr.reponse4.fr.texte = value!,
            ),
            PrimaryButton(texte: _trad.btn_save, fonction: () => _submit()),
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

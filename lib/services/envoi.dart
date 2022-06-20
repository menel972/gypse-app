import 'package:bible_quiz/services/crud/question_crud.dart';
import 'package:bible_quiz/services/crud/reponse_crud.dart';
import 'package:bible_quiz/services/models/q_lang.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/r_lang.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:flutter/material.dart';







class Envoi extends StatefulWidget {
  const Envoi({Key? key}) : super(key: key);

  @override
  State<Envoi> createState() => _EnvoiState();
}

class _EnvoiState extends State<Envoi> {
  final model = {
    'question': Question(
      id: '',
      fr: QLang(
        texte: '',
        livre: '',
      ),
      en: QLang(
        texte: '',
        livre: '',
      ),
      es: QLang(
        texte: '',
        livre: '',
      ),
    ),
    'reponse 1': Reponse(
      id: '',
      questionId: '',
      confirme: true,
      fr: RLang(
        texte: '',
        link: '',
        versetRef: '',
        verset: '',
      ),
      en: RLang(
        texte: '',
        link: '',
        versetRef: '',
        verset: '',
      ),
      es: RLang(
        texte: '',
        link: '',
        versetRef: '',
        verset: '',
      ),
    ),
    'reponse 2': Reponse(
      id: '',
      questionId: '',
      confirme: false,
      fr: RLang(
        texte: '',
      ),
      en: RLang(
        texte: '',
      ),
      es: RLang(
        texte: '',
      ),
    ),
    'reponse 3': Reponse(
      id: '',
      questionId: '',
      confirme: false,
      fr: RLang(
        texte: '',
      ),
      en: RLang(
        texte: '',
      ),
      es: RLang(
        texte: '',
      ),
    ),
    'reponse 4': Reponse(
      id: '',
      questionId: '',
      confirme: false,
      fr: RLang(
        texte: '',
      ),
      en: RLang(
        texte: '',
      ),
      es: RLang(
        texte: '',
      ),
    ),
  };

  final qr = [
//     {
// 'question': Question(
// id: '',
// texte: 'À quel élément est associé la langue ?',
// livre: 'Jacques',
// ),
// 'reponse 1': Reponse(
// id: '',
// questionId: '',
// texte: 'Au feu, qui embrase',
// confirme: true,
// versetRef: 'Jacq 3:5-6',
// verset: 'Voici comme un petit feu peut embraser une grande forêt ! La langue aussi est un feu.',
// ),
// 'reponse 2': Reponse(
// id: '',
// questionId: '',
// texte: 'À la terre, indomptable et robuste',
// confirme: false,
// ),
// 'reponse 3': Reponse(
// id: '',
// questionId: '',
// texte: 'À l’air, pleine de légèreté',
// confirme: false,
// ),
// 'reponse 4': Reponse(
// id: '',
// questionId: '',
// texte: 'À l’eau, douce comme une rivière',
// confirme: false,
// ),
// },
  ];

  void test(Map<String, Object> qr) {
    String qid = QuestionCrud.addQuestionId(qr['question'] as Question);
    ReponseCrud.addReponseId(qr['reponse 1'] as Reponse, qid);
    ReponseCrud.addReponseId(qr['reponse 2'] as Reponse, qid);
    ReponseCrud.addReponseId(qr['reponse 3'] as Reponse, qid);
    ReponseCrud.addReponseId(qr['reponse 4'] as Reponse, qid);
  }

  @override
  void initState() {
    // for (var i = 0; i != Send().gen.length; i++) {
    //   test(Send().gen[i]);
    // }
    // for (var i = 0; i != Send().ap.length; i++) {
    //   test(Send().ap[i]);
    // }
    // for (var i = 0; i != Send().lc.length; i++) {
    //   test(Send().lc[i]);
    // }
    // for (var i = 0; i != Send().prov.length; i++) {
    //   test(Send().prov[i]);
    // }
    // for (var i = 0; i != Send().esa.length; i++) {
    //   test(Send().esa[i]);
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

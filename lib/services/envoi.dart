import 'package:bible_quiz/services/crud/question_crud.dart';
import 'package:bible_quiz/services/crud/reponse_crud.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:flutter/material.dart';

class Envoi extends StatefulWidget {
  const Envoi({Key? key}) : super(key: key);

  @override
  State<Envoi> createState() => _EnvoiState();
}

class _EnvoiState extends State<Envoi> {
  Question ques = Question(id: 'id', texte: 'q1', livre: 'Jean');
  Reponse rep1 = Reponse(
      id: 'id',
      questionId: 'questionId',
      texte: 'texte rep 1',
      confirme: false);

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
    String text = QuestionCrud.addQuestionId(qr['question'] as Question);
    ReponseCrud.addReponseId(qr['reponse 1'] as Reponse, text);
    ReponseCrud.addReponseId(qr['reponse 2'] as Reponse, text);
    ReponseCrud.addReponseId(qr['reponse 3'] as Reponse, text);
    ReponseCrud.addReponseId(qr['reponse 4'] as Reponse, text);
  }

  @override
  void initState() {
    // for (var i = 0; i != qr.length; i++) {
    //   test(qr[i]);
    // }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}

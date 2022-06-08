import 'package:bible_quiz/services/models/question_model.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';

class Qr {
  Question question;
  Reponse reponse1;
  Reponse reponse2;
  Reponse reponse3;
  Reponse reponse4;

  Qr({
    required this.question,
    required this.reponse1,
    required this.reponse2,
    required this.reponse3,
    required this.reponse4,
  });
}

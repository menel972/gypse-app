import 'package:bible_quiz/services/models/question_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionCrud {
  static final CollectionReference<Map<String, dynamic>> db =
      FirebaseFirestore.instance.collection('questions');

  // {} Create
  static Future addQuestion(Question question) async {
    final DocumentReference<Map<String, dynamic>> doc = db.doc();
    final Map<String, dynamic> newQuestion = question.toJson(doc.id);

    await doc
        .set(newQuestion)
        // ignore: avoid_print
        .catchError((e) => print('add question error : ' + e.toString()));
  }

  // {} Read
  static Stream<List<Question>> fetchQuestionByUser(List<String> userQ) {
    return db.snapshots().map((snap) => snap.docs
        .map((doc) => Question.fromJson(doc.data()))
        .where((question) => !userQ.contains(question.id))
        .toList());
  }

  static Stream<Question> fetchFirstQuestionByUser(
      List<dynamic> userQ, String? livre) {
    return db.snapshots().map((snap) => snap.docs
        .map((doc) => Question.fromJson(doc.data()))
        .where((question) => !userQ.contains(question.id))
        .where((question) {
          if (livre == null) {
            return true;
          }
          if (livre != '') {
            return question.livre.contains(livre);
          }
          return true;
        })
        .toList()
        .first);
  }

  static Stream<Map<String, int>> fetchQuestionByBook(
      String livre, List<dynamic> userQ) {
    return db
        .snapshots()
        .map((snap) => snap.docs
            .map((doc) => Question.fromJson(doc.data()))
            .where((question) => question.livre == livre)
            .toList())
        .map((questions) => {
              'nbQ': questions.length,
              'nbR': questions
                  .where((question) => userQ.contains(question.id))
                  .length,
            });
  }
}

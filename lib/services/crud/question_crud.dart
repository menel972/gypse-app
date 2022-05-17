import 'package:bible_quiz/services/models/question_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionCrud {
  static final CollectionReference<Map<String, dynamic>> db =
      FirebaseFirestore.instance.collection('questions');

  // {} Read
  static Stream<List<Question>> fetchQuestionByUser(List<String> userQ) {
    return db.snapshots().map((snap) => snap.docs
        .map((doc) => Question.fromJson(doc.data()))
        .where((question) => !userQ.contains(question.id))
        .toList());
  }

  static Stream<Question> fetchFirstQuestionByUser(
      List<String> userQ, String? livre) {
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
}

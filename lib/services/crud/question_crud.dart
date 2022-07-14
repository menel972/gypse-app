import 'package:bible_quiz/services/models/q_lang.dart';
import 'package:bible_quiz/services/models/question_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class QuestionCrud {
  static final CollectionReference<Map<String, dynamic>> db =
      FirebaseFirestore.instance.collection('question');

  // {} Create
  static Future addQuestion(Question question) async {
    final DocumentReference<Map<String, dynamic>> doc = db.doc();
    final Map<String, dynamic> newQuestion = question.toJson(doc.id);

    await doc
        .set(newQuestion)
        // ignore: avoid_print
        .catchError((e) => print('add question error : ' + e.toString()));
  }

  static String addQuestionId(Question question) {
    final DocumentReference<Map<String, dynamic>> doc = db.doc();
    final Map<String, dynamic> newQuestion = question.toJson(doc.id);

    doc
        .set(newQuestion)
        // ignore: avoid_print
        .catchError((e) => print('add question error : ' + e.toString()));

    return doc.id;
  }

  // {} Read
  static Stream<List<Question>> fetchAllQuestion() {
    return db.snapshots().map((snap) =>
        snap.docs.map((doc) => Question.fromJson(doc.data())).toList());
  }

  static Stream<List<Question>> fetchQuestionByUser(List<dynamic> userQ) {
    return fetchAllQuestion().map((questions) =>
        questions.where((question) => !userQ.contains(question.id)).toList());
  }

  static Stream<Question> fetchFirstQuestionByUser(
      List<dynamic> userQ, String? livre, String locale) {
    return fetchQuestionByUser(userQ).map((questions) {
      final t = questions.where((question) {
        if (livre == null) {
          return true;
        }
        if (livre != '') {
          return QLang.getLang(question, locale).livre.contains(livre);
        }
        return true;
      }).toList();

      t.shuffle();
      return t.first;
    });
  }
  // static Stream<Question> fetchFirstQuestionByUser(
  //     List<dynamic> userQ, String? livre, String locale) {

  //   return fetchQuestionByUser(userQ).map((questions) => questions
  //       .where((question) {
  //         if (livre == null) {
  //           return true;
  //         }
  //         if (livre != '') {
  //           return QLang.getLang(question, locale).livre.contains(livre);
  //         }
  //         return true;
  //       })
  //       .toList()
  //       .first);
  // }

  static Stream<Map<String, int>> fetchQuestionByBook(
      String livre, List<dynamic> userQ, String locale) {
    return fetchAllQuestion()
        .map((questions) => questions
            .where((question) => QLang.getLang(question, locale).livre == livre)
            .toList())
        .map((questions) => {
              'nbQ': questions.length,
              'nbR': questions
                  .where((question) => userQ.contains(question.id))
                  .length,
            });
  }

// {} Delete
  static Future removeQuestion(String questonId) async {
    await db.doc(questonId).delete();
  }
}

import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class ReponseCrud {
  static final CollectionReference<Map<String, dynamic>> db =
      FirebaseFirestore.instance.collection('reponses');

  // {} Read
  static Stream<List<Reponse>> fetchReponseByNiveau(
      int niv, String questionId) {
    switch (niv) {
      case 1:
        return fetch2Reponses(questionId);
      case 2:
        return fetch3Reponses(questionId);
      default:
        return fetch4Reponses(questionId);
    }
  }
  // Récupère le bon nombre de réponse en fonction du niveau

  static Stream<List<Reponse>> fetch4Reponses(String questionId) {
    return db.snapshots().map((snap) => snap.docs
        .map((doc) => Reponse.fromJson(doc.data()))
        .where((reponse) => reponse.questionId == questionId)
        .toList());
  }
  // Récupère les réponses pour le mode difficile

  static Stream<List<Reponse>> fetch3Reponses(String questionId) {
    return fetch4Reponses(questionId).map((reponses) {
      final Reponse firstFalse =
          reponses.firstWhere((reponse) => !reponse.confirme);
      reponses.remove(firstFalse);
      return reponses;
    });
  }
  // Récupère les réponses pour le mode moyen

  static Stream<List<Reponse>> fetch2Reponses(String questionId) {
    return fetch3Reponses(questionId).map((reponses) {
      final Reponse firstFalse =
          reponses.firstWhere((reponse) => !reponse.confirme);
      reponses.remove(firstFalse);
      return reponses;
    });
  }
  // Récupère les réponses pour le mode facile

  static Future updateSelect(String id) async {
    return await db.doc(id).set({'select': true});
  }
}

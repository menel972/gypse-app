import 'package:bible_quiz/services/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserCrud {
  static final CollectionReference<Map<String, dynamic>> db =
      FirebaseFirestore.instance.collection('user');

  // {} Create
  static Future addUser(User user) async {
    final DocumentReference<Map<String, dynamic>> doc = db.doc();

    await doc
        .set(user.toJson(doc.id))
        // ignore: avoid_print
        .catchError((e) => print('add user error : ' + e.toString()));
  }

  // {} Read
  static Stream<User> getConnectedUser(String userId) {
    return db
        .doc(userId)
        .snapshots()
        .map((snap) => User.fromJson(snap.data()!));
  }

  // {} Update
  static Future updateUser(User user) async {
    await db
        .doc(user.id)
        .set(user.toJson(user.id))
        // ignore: avoid_print
        .catchError((e) => print('update error : ' + e.toString()));
  }
}

import 'package:bible_quiz/services/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserCrud {
  static final CollectionReference<Map<String, dynamic>> db =
      FirebaseFirestore.instance.collection('user');

  // {} Create
  static Future addUser(MyUser user) async {
    final DocumentReference<Map<String, dynamic>> doc = db.doc();

    await doc
        .set(user.toJson())
        // ignore: avoid_print
        .catchError((e) => print('add user error : ' + e.toString()));
  }

  // {} Read
  static Stream<MyUser> getConnectedUser(String userId) {
    return db
    .snapshots().map((snap) => snap.docs
        .map((doc) => MyUser.fromJson(doc.data()))
        .firstWhere((user) => user.id == userId));
  }

  // {} Update
  static Future updateUser(MyUser user) async {
    await db
        .doc(user.id)
        .set(user.toJson())
        // ignore: avoid_print
        .catchError((e) => print('update error : ' + e.toString()));
  }
}

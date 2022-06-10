// ignore_for_file: avoid_print

import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserCrud {
  static final CollectionReference<Map<String, dynamic>> db =
      FirebaseFirestore.instance.collection('user');

  static Future<bool> checkExistingUser(String uid) async {
    return await db.get().then((snapshot) => snapshot.docs
        .map((doc) => MyUser.fromJson(doc.data()).id)
        .contains(uid));
  }

  // {} Create
  static Future addUser(MyUser user) async {
    await db
        .doc(user.id)
        .set(user.toJson())
        .catchError((e) => print('add user error : ' + e.toString()));
  }

  static Future addGoogleUser(MyUser newUser) async {
    if (!await checkExistingUser(newUser.id)) {
      addUser(newUser);
    }
  }

  // {} Read
  static Stream<MyUser> getConnectedUser(String userId) {
    return db.snapshots().map((snap) => snap.docs
        .map((doc) => MyUser.fromJson(doc.data()))
        .firstWhere((user) => user.id == userId));
  }

  // {} Update
  static Future updateUser(MyUser user) async {
    await db
        .doc(user.id)
        .set(user.toJson())
        .then((value) => print('updated'))
        .catchError((e) => print('update error : ' + e.toString()));
  }

  static Future updateSettings(String uid, Setting settings) async {
    await db
        .doc(uid)
        .update({'settings': settings.toJson()})
        .then((value) => print('settings updated'))
        .catchError((e) => print('update error : ' + e.toString()));
  }

  // {} Delete
  static Future deleteUser(String uid) async {
    await db.doc(uid).delete().catchError((e) => print('delete user $e'));
  }
}

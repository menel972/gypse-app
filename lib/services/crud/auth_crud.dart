// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../views/auth/auth_vue.dart';
import '../providers/user_provider.dart';

class AuthCrud {
  static final auth = FirebaseAuth.instance;

// {} Connected
  static Future<bool> isConnected() async {
    return await auth
        .authStateChanges()
        .elementAt(0)
        .then((value) => value == null ? false : true);
  }

  static Future signOut() async {
    await auth.signOut();
  }

  static String userId() {
    return auth.currentUser!.uid;
  }

  static User currentUser = auth.currentUser!;

  // = Method User Id
  static String getUserId(context, String method) {
    switch (method) {
      case Method.mdp:
        return AuthCrud.userId();
      case Method.g:
        return AuthCrud.googleUser!.id;
      case Method.fb:
        return '';
      default:
        Navigator.pushNamed(context, AuthVue.route);
        return '';
    }
  }

// {} Email - Password
  static Future addUser(String mail, String mdp) async {
    await auth
        .createUserWithEmailAndPassword(email: mail, password: mdp)
        .then((value) => {
              UserCrud.addUser(MyUser(
                  id: value.user!.uid,
                  questions: [],
                  settings: Setting(niveau: 2, chrono: 30)))
            });
  }

  static Future<UserCredential> loginMailMdp(String mail, String mdp) async {
    return await auth.signInWithEmailAndPassword(email: mail, password: mdp);
  }

  // {} Google
  static final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  static GoogleSignInAccount? googleUser = googleSignIn.currentUser;
}

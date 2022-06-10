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
  static Future<String?> addUser(
      {required String mail,
      required String mdp,
      required String userName}) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: mail, password: mdp)
          .then((value) {
        String _suffix = value.user!.uid.substring(0, 4);

        UserCrud.addUser(
          MyUser(
            id: value.user!.uid,
            userName: '$userName#$_suffix',
            questions: [],
            settings: Setting(niveau: 2, chrono: 30),
            isAdmin: false,
          ),
        );
      });
      return null;
    } on FirebaseAuthException {
      return 'Erreur - Cette adresse mail est déjà utilisée par un compte existant';
    }
  }

  static Future setUserName(String userName) async {
    String _suffix = auth.currentUser!.uid.substring(0, 4);
    await auth.currentUser!.updateDisplayName('$userName#$_suffix');
  }

  static Future<String?> loginMailMdp(String mail, String mdp) async {
    try {
      await auth.signInWithEmailAndPassword(email: mail, password: mdp);
      return null;
    } on FirebaseAuthException catch (e) {
      switch (e.code) {
        case 'user-disabled':
          return 'Erreur - Votre compte est désactivé';
        case 'user-not-found':
          return 'Erreur - Aucun compte ne correspond à l\'adresse mail fournie ';
        default:
          return 'Erreur - Le mot de passe ne correspond pas à l\'adresse mail fournie';
      }
    }
  }

  // {} Google
  static final GoogleSignIn googleSignIn = GoogleSignIn(scopes: ['email']);
  static GoogleSignInAccount? googleUser = googleSignIn.currentUser;
}

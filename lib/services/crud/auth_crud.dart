// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/enums/my_locales.dart';
import 'package:bible_quiz/services/models/settings_model.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

import '../../views/auth/auth_vue.dart';
import '../BLoC/bloc_router.dart';
import '../providers/user_provider.dart';

class AuthCrud {
  static final auth = FirebaseAuth.instance;

// {} Connected
  static bool isConnected() {
    return auth.currentUser != null ? true : false;
  }

  static Future signOut(BuildContext context) async {
    UserCrud.updateConnectedState(currentUser.uid, false);
    await auth.signOut();
    Navigator.push(
      context,
      BlocRouter().authRoute(),
    );
  }

  static Future deleteAccount() async {
    await UserCrud.deleteUser(auth.currentUser!.uid);
    await auth.currentUser!.delete();
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
  static Future<String?> addUser({
    required String mail,
    required String mdp,
    required String userName,
    required MyLocales locale,
  }) async {
    try {
      await auth
          .createUserWithEmailAndPassword(email: mail, password: mdp)
          .then((value) {
        String _suffix = value.user!.uid.substring(0, 4);

        UserCrud.addUser(
          MyUser(
            id: value.user!.uid,
            userName: '$userName#$_suffix',
            locale: locale,
            isConnected: true,
            isAdmin: false,
            settings: Setting(niveau: 2, chrono: 30),
            questions: [],
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
      UserCrud.updateConnectedState(currentUser.uid, true);
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

  static Future updatePassword(BuildContext context) async {
    try {
      await auth.sendPasswordResetEmail(email: auth.currentUser!.email!);

      // TODO : AJOUTER LA TRADUCTION
      ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
        content: Text('Un mail vous a été envoyé. Vous allez être déconnecté'),
        backgroundColor: Couleur.secondary,
        duration: Duration(seconds: 3),
      ));

      await Future.delayed(const Duration(seconds: 4));
      signOut(context);
    } on FirebaseAuthException catch (e) {
      print(e.code);
    }
  }

  // {} Google
  static final GoogleSignIn googleSignIn = GoogleSignIn(scopes: [
    'email',
    'https://www.googleapis.com/auth/contacts.readonly',
  ]);

  gglSignIn() async {
    try {
      GoogleSignInAccount? log = await googleSignIn.signIn();
      String? acces =
          await log!.authentication.then((value) => value.accessToken);

      auth.signInWithCredential(
          GoogleAuthProvider.credential(accessToken: acces));
    } on FirebaseAuthException catch (e) {
      print('HERE : ${e.message}');
    }
  }

  static GoogleSignInAccount? googleUser = googleSignIn.currentUser;

  // {} Facebook
  Future fbSignIn() async {
    try {
      final LoginResult loginResult = await FacebookAuth.instance
          .login(permissions: ['email', 'public_profile']);

      print('HERE : ${loginResult.status.name}');

      await FacebookAuth.instance
          .getUserData()
          .then((value) => print(value['email']));

      final OAuthCredential fbCredential =
          FacebookAuthProvider.credential(loginResult.accessToken!.token);

      print(fbCredential);
      await auth.signInWithCredential(fbCredential);
    } on FirebaseAuthException catch (e) {
      print(e.message);
    }
  }

  fb() async {
    AccessToken? access = await FacebookAuth.instance.accessToken;
    OAuthCredential cr = FacebookAuthProvider.credential(access!.userId);

    try {
      auth.signInWithCredential(cr);
    } on FirebaseAuthException catch (e) {
      print('${e.credential} - ${e.message}');
    }
  }

  Future fbSignOut() async {
    FacebookAuth.instance.getUserData().then((value) => print(value['name']));
    await FacebookAuth.instance.logOut();
  }
}

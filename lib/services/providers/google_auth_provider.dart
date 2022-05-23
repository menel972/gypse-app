// import 'dart:async';
// import 'package:flutter/material.dart';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class GoogleAuthProvider extends ChangeNotifier {
//   GoogleSignInAccount? _user;
//   GoogleSignInAccount? get user => _user!;

//   Future googleLogin() async {
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//     if (googleUser == null) return;
//     _user = googleUser;

//     final GoogleSignInAuthentication googleAuth =
//         await googleUser.authentication;

//     final credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     await FirebaseAuth.instance.signInWithCredential(credential);
//     notifyListeners();
//   }
// }

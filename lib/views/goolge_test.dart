// import 'package:bible_quiz/services/crud/user_crud.dart';
// import 'package:bible_quiz/services/models/settings_model.dart';
// import 'package:bible_quiz/services/models/user_model.dart';
// import 'package:flutter/material.dart';
// import 'package:google_sign_in/google_sign_in.dart';

// class GoogleTest extends StatefulWidget {
//   const GoogleTest({Key? key}) : super(key: key);

//   @override
//   State<GoogleTest> createState() => _GoogleTestState();
// }

// class _GoogleTestState extends State<GoogleTest> {
//   final GoogleSignIn _googleSignIn = GoogleSignIn(scopes: ['email']);
//   @override
//   Widget build(BuildContext context) {
//     GoogleSignInAccount? user = _googleSignIn.currentUser;
//     return Scaffold(
//       appBar: AppBar(
//         title:
//             Text('Google sign in (Signed ' + (user == null ? 'out)' : 'in)')),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             ElevatedButton(
//               onPressed: () async {
//                 await _googleSignIn.signIn().then((newUser) =>
//                     UserCrud.addGoogleUser(MyUser(
//                         id: newUser!.id,
//                         questions: [],
//                         isAdmin: false,
//                         settings: Setting(niveau: 3, chrono: 30))));
//                 setState(() {});
//               },
//               child: const Text('Sign In'),
//             ),
//             const SizedBox(height: 20),
//             ElevatedButton(
//               onPressed: () async {
//                 await _googleSignIn.signOut();
//                 setState(() {});
//               },
//               child: const Text('Sign Out'),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

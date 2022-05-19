import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/views/auth/auth_vue.dart';
import 'package:flutter/material.dart';

class Compte extends StatefulWidget {
  const Compte({Key? key}) : super(key: key);

  @override
  State<Compte> createState() => _CompteState();
}

class _CompteState extends State<Compte> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
          child: const Text('Logout'),
          onPressed: () => {
                AuthCrud.signOut(),
                Navigator.pushNamed(
                  context,
                  AuthVue.route,
                )
              }),
    );
  }
}

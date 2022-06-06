// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/views/auth/auth_vue.dart';
import 'package:bible_quiz/views/home/home_vue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../services/crud/user_crud.dart';
import '../../services/models/user_model.dart';
import '../../services/providers/user_provider.dart';

class Splashscreen extends StatefulWidget {
  static const String route = '.splashscreen';
  const Splashscreen({Key? key}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

// <> _SpashscreenState()
class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 2), () {
      AuthCrud.isConnected().then((value) {
        if (value) {
          Navigator.pushNamed(context, HomeVue.route);
        } else {
          Navigator.pushNamed(context, AuthVue.route);
        }
      });
    });
    super.initState();
  }

  Future<MyUser> myUse() async {
    return await UserCrud.getConnectedUser(AuthCrud.currentUser.uid).first;
  }

  // <> Build
  @override
  Widget build(BuildContext context) {
    // print('HERE !! ${AuthCrud.currentUser.uid}');
    void setPrivateUser() async =>
        Provider.of<UserProvider>(context, listen: false)
            .setUser(await myUse());
    AuthCrud.isConnected().then((value) {
      if (value) setPrivateUser();
    });
    

    return Scaffold(
      backgroundColor: Couleur.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: SvgPicture.asset(
            'assets/images/splashicon_gypse.svg',
            height: 200,
          ),
        ),
      ),
    );
  }
}

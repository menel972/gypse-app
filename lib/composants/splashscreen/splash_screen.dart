import 'dart:async';

import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/views/auth/auth_vue.dart';
import 'package:bible_quiz/views/home/home_vue.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

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

  // <> Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Couleur.primary,
      body: Center(
        child: SvgPicture.asset('assets/images/logo.svg'),
      ),
    );
  }
}

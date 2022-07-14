// ignore_for_file: avoid_print

import 'dart:async';

import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';

import '../../services/BLoC/bloc_router.dart';
import '../../services/crud/user_crud.dart';
import '../../services/models/user_model.dart';
import '../../services/providers/user_provider.dart';

class Splashscreen extends StatefulWidget {
  static const String route = './splashscreen';
  final String version;
  const Splashscreen({Key? key, required this.version}) : super(key: key);

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

// <> _SpashscreenState()
class _SplashscreenState extends State<Splashscreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 2), () {
      if (AuthCrud.isConnected()) {
        UserCrud.updateConnectedState(AuthCrud.currentUser.uid, true);
        Navigator.push(context, BlocRouter().homeRoute());
      } else {
        Navigator.push(context, BlocRouter().authRoute());
      }
    });
    super.initState();
  }

  Future<MyUser> myUse() async {
    return await UserCrud.getConnectedUser(AuthCrud.currentUser.uid).first;
  }

  // <> Build
  @override
  Widget build(BuildContext context) {
    void setPrivateUser() async =>
        Provider.of<UserProvider>(context, listen: false)
            .setUser(await myUse());

    if (AuthCrud.isConnected()) setPrivateUser();

    return Scaffold(
      backgroundColor: Couleur.primary,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                'assets/images/splashicon_gypse.svg',
                height: 200,
              ),
              Text(
                'app version : ${widget.version}',
                style: MyTextStyle.labelS,
              )
            ],
          ),
        ),
      ),
    );
  }
}

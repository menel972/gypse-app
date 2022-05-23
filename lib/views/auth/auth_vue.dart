import 'package:bible_quiz/views/auth/widgets/sign_in.dart';
import 'package:bible_quiz/views/auth/widgets/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthVue extends StatefulWidget {
  static const String route = './auth';
  const AuthVue({Key? key}) : super(key: key);

  @override
  State<AuthVue> createState() => _AuthVueState();
}

class _AuthVueState extends State<AuthVue> {
  bool hasAccount = true;

  void setHasAccount() => setState(() {
        hasAccount = !hasAccount;
      });

  Widget switchSign() {
    switch (hasAccount) {
      case true:
        return SignIn(setHasAccount: setHasAccount);
      default:
        return SignUp(setHasAccount: setHasAccount);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/home_bkg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: ListView(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset('assets/images/logo.svg'),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 50),
              child: switchSign(),
            ),
          ],
        ),
      ),
    );
  }
}

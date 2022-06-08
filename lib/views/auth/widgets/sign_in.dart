import 'dart:async';

import 'package:bible_quiz/composants/bouttons/secondary_button.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/providers/user_provider.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/BLoC/bloc_router.dart';
import '../../../services/crud/user_crud.dart';
import '../../../services/enums/couleur.dart';
import '../../../services/models/user_model.dart';

class SignIn extends StatefulWidget {
  final VoidCallback setHasAccount;

  const SignIn({
    Key? key,
    required this.setHasAccount,
  }) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

// <> _SignInState()
class _SignInState extends State<SignIn> {
  final _mailController = TextEditingController();
  final _mdpController = TextEditingController();

  bool hide = true;

  Future<MyUser> myUse() async {
    return await UserCrud.getConnectedUser(AuthCrud.currentUser.uid).first;
  }
  // <> Build
  @override
  Widget build(BuildContext context) {
    void setPrivateUser() async =>
        Provider.of<UserProvider>(context, listen: false)
            .setUser(await myUse());

    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        boxShadow: const [
          BoxShadow(
            color: Colors.black,
            offset: Offset(2, 1),
            blurRadius: 4,
          ),
          BoxShadow(
            color: Couleur.primary,
            offset: Offset(3, 2),
            blurRadius: 10,
          ),
        ],
        borderRadius: BorderRadius.circular(20),
        gradient: SweepGradient(
          colors: [
            Couleur.blanc2.withOpacity(1),
            Couleur.bleu.withOpacity(0.2),
            Couleur.violet.withOpacity(1),
            Couleur.orange.withOpacity(1),
          ],
          stops: const [
            0,
            0.39,
            0.6,
            0.9,
          ],
          center: const Alignment(1, 0.2),
          startAngle: -0.8,
          endAngle: 6.5,
        ),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 30),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Connexion',
            style: MyTextStyle.titleM,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const Icon(
                Icons.alternate_email,
                color: Couleur.blanc,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: TextFormField(
                  controller: _mailController,
                  decoration: const InputDecoration(
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                ),
              ),
            ],
          ),
          const SizedBox(height: 30),
          Row(
            children: [
              const Icon(
                Icons.lock_outline,
                color: Couleur.blanc,
              ),
              const SizedBox(width: 5),
              Expanded(
                child: TextFormField(
                  controller: _mdpController,
                  decoration: InputDecoration(
                    labelText: 'Mot de passe',
                    suffixIcon: IconButton(
                      onPressed: () => setState(() {
                        hide = !hide;
                      }),
                      icon: Icon(
                        hide
                            ? Icons.remove_red_eye_outlined
                            : Icons.visibility_off_outlined,
                        color: Couleur.blanc,
                      ),
                    ),
                  ),
                  obscureText: hide,
                  keyboardType: TextInputType.visiblePassword,
                ),
              ),
            ],
          ),
          const SizedBox(height: 50),
          SecondaryButton(
            texte: 'Connexion',
            fonction: () => {
              AuthCrud.loginMailMdp(_mailController.text, _mdpController.text),
              setPrivateUser(),
              Timer(const Duration(seconds: 1),
                  () => Navigator.push(context, BlocRouter().homeRoute())),
            },
          ),
          // const SizedBox(height: 50),
          // SecondaryButton(
          //   texte: 'Google',
          //   fonction: () {
          //     setMethod(Method.g);
          //     AuthCrud.googleSignIn.signIn().then((newUser) => {
          //           UserCrud.addGoogleUser(MyUser(
          //               id: newUser!.id,
          //               questions: [],
          //               settings: Setting(niveau: 3, chrono: 30))),
          //         });
          //     Timer(const Duration(seconds: 1),
          //         () => Navigator.pushNamed(context, HomeVue.route));
          //   },
          // ),
          Row(
            children: [
              Flexible(
                flex: 7,
                child: FittedBox(
                  child: Text(
                    'Pas encore de compte ?',
                    style: MyTextStyle.textS,
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                child: TextButton(
                    onPressed: () => widget.setHasAccount(),
                    child: FittedBox(
                      child: Text(
                        'Créer un compte',
                        style: MyTextStyle.textOrangeS,
                      ),
                    )),
              ),
            ],
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    _mailController.dispose();
    _mdpController.dispose();
    super.dispose();
  }
}

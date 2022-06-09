import 'dart:async';

import 'package:bible_quiz/composants/bouttons/secondary_button.dart';
import 'package:bible_quiz/services/BLoC/bloc_provider.dart';
import 'package:bible_quiz/services/BLoC/provided/boolean_bloc.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/enums/my_size.dart';
import 'package:bible_quiz/services/enums/my_validators.dart';
import 'package:bible_quiz/services/providers/user_provider.dart';
import 'package:bible_quiz/styles/my_input_style.dart';
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
  final _signInKey = GlobalKey<FormState>();

  Map<String, String> credential = {'mail': '', 'mdp': ''};

  Future<String?> _submit() async {
    bool isValid = _signInKey.currentState!.validate();

    if (!isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content:
                Text('Il y a une erreur dans vos identifiants de connexion'),
            backgroundColor: Colors.red),
      );
      return '';
    }

    _signInKey.currentState!.save();
    return await AuthCrud.loginMailMdp(credential['mail']!, credential['mdp']!);
  }

  Future<MyUser> myUse() async {
    return await UserCrud.getConnectedUser(AuthCrud.currentUser.uid).first;
  }

  // <> Build
  @override
  Widget build(BuildContext context) {
    Size _size = MySize().size(context);
    // = Provider
    void setPrivateUser() async =>
        Provider.of<UserProvider>(context, listen: false)
            .setUser(await myUse());

    // = BLoC
    final _bloc = BlocProvider.of<BooleanBloc>(context);

    return StreamBuilder<bool>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          bool _hide = snapshot.data!;
          return Form(
            key: _signInKey,
            child: Container(
              height: _size.height * 0.55,
              width: _size.width * 0.8,
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
              padding: EdgeInsets.symmetric(
                  horizontal: _size.width * 0.03,
                  vertical: _size.height * 0.05),
              child: ListView.separated(
                itemCount: 5,
                separatorBuilder: (context, i) {
                  if (i == 0) return SizedBox(height: _size.height * 0.03);
                  if (i == 2) return SizedBox(height: _size.height * 0.04);
                  if (i == 2) return SizedBox(height: _size.height * 0.001);
                  return SizedBox(height: _size.height * 0.01);
                },
                itemBuilder: (context, i) => [
                  Text(
                    'Connexion',
                    style: MyTextStyle.titleM,
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                    decoration: MyInputStyle.ajoutInputStyle(
                        'E-mail', Icons.alternate_email),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    validator: (value) => MyValidators().emailValidator(value),
                    onSaved: (value) => credential['mail'] = value!,
                  ),
                  TextFormField(
                    decoration: MyInputStyle.mdpInputStyle(
                      'Mot de passe',
                      IconButton(
                        onPressed: () => _bloc.switchBoolean(),
                        icon: Icon(
                          _hide
                              ? Icons.remove_red_eye_outlined
                              : Icons.visibility_off_outlined,
                          color: Couleur.blanc,
                        ),
                      ),
                    ),
                    obscureText: _hide,
                    keyboardType: TextInputType.visiblePassword,
                    validator: (value) => MyValidators().mdpValidator(value),
                    onSaved: (value) => credential['mdp'] = value!,
                  ),
                  SecondaryButton(
                    texte: 'Connexion',
                    fonction: () async {
                      final String? _isValid = await _submit();

                      if (_isValid != null && _isValid != '') {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(_isValid),
                              backgroundColor: Colors.red),
                        );
                      }

                      if (_isValid == null) {
                        _signInKey.currentState!.reset();
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(
                              content: Text('Bienvenue'),
                              backgroundColor: Couleur.secondary),
                        );
                        setPrivateUser();
                        Navigator.push(context, BlocRouter().homeRoute());
                      }
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
                ][i],
              ),
            ),
          );
        });
  }

  @override
  void dispose() {
    _signInKey.currentState!.dispose();
    super.dispose();
  }
}

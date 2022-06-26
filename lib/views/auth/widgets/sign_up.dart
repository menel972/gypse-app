import 'package:bible_quiz/composants/bouttons/secondary_button.dart';
import 'package:bible_quiz/services/BLoC/bloc_provider.dart';
import 'package:bible_quiz/services/BLoC/provided/boolean_bloc.dart';
import 'package:bible_quiz/services/enums/my_size.dart';
import 'package:bible_quiz/styles/my_input_style.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../services/BLoC/bloc_router.dart';
import '../../../services/crud/auth_crud.dart';
import '../../../services/crud/user_crud.dart';
import '../../../services/enums/couleur.dart';
import '../../../services/enums/my_validators.dart';
import '../../../services/models/user_model.dart';
import '../../../services/providers/user_provider.dart';

class SignUp extends StatefulWidget {
  final VoidCallback setHasAccount;
  const SignUp({
    Key? key,
    required this.setHasAccount,
  }) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _signUpKey = GlobalKey<FormState>();

  Map<String, String> credential = {'mail': '', 'mdp': '', 'userName': ''};

  Future<String?> _submit() async {
    bool isValid = _signUpKey.currentState!.validate();
    if (!isValid) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
            content: Text('Le formulaire n\'est pas valide'),
            backgroundColor: Colors.red),
      );
      return '';
    }

    _signUpKey.currentState!.save();
    return await AuthCrud.addUser(
        mail: credential['mail']!,
        mdp: credential['mdp']!,
        userName: credential['userName']!);
  }

  Future<MyUser> myUse() async {
    return await UserCrud.getConnectedUser(AuthCrud.currentUser.uid).first;
  }

  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;
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
            key: _signUpKey,
            child: Container(
              height: _size.height * 0.65,
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
                  vertical: _size.height * 0.04),
              child: ListView.separated(
                itemCount: 6,
                separatorBuilder: (context, i) {
                  if (i == 0) return SizedBox(height: _size.height * 0.03);
                  if (i == 3) return SizedBox(height: _size.height * 0.04);
                  if (i == 4) return SizedBox(height: _size.height * 0.001);
                  return SizedBox(height: _size.height * 0.01);
                },
                itemBuilder: (context, i) => [
                  Text(
                    _trad.txt_signup,
                    style: MyTextStyle.titleM,
                    textAlign: TextAlign.center,
                  ),
                  TextFormField(
                    style: MyTextStyle.labelM,
                    decoration: MyInputStyle.ajoutInputStyle(
                        _trad.label_name, Icons.person_outline),
                    textInputAction: TextInputAction.next,
                    validator: (value) =>
                        MyValidators()
                        .isEmpty(value),
                    onSaved: (value) => credential['userName'] = value!,
                  ),
                  TextFormField(
                    style: MyTextStyle.labelM,
                    decoration: MyInputStyle.ajoutInputStyle(
                        _trad.label_mail, Icons.alternate_email),
                    keyboardType: TextInputType.emailAddress,
                    textInputAction: TextInputAction.next,
                    validator: (value) => MyValidators().emailValidator(value),
                    onSaved: (value) => credential['mail'] = value!,
                  ),
                  TextFormField(
                    style: MyTextStyle.labelM,
                    decoration: MyInputStyle.mdpInputStyle(
                      _trad.label_mdp,
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
                    texte: _trad.btn_signup,
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
                        AuthCrud.loginMailMdp(
                            credential['mail']!, credential['mdp']!);
                        AuthCrud.setUserName(credential['userName']!);
                        setPrivateUser();
                        _signUpKey.currentState!.reset();
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                              content: Text(
                                  _trad.snack_save_profile),
                              backgroundColor: Couleur.secondary),
                        );
                        Navigator.push(context, BlocRouter().homeRoute());
                      }
                    },
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 7,
                        child: FittedBox(
                          child: Text(
                            _trad.txt_yes_account,
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
                                _trad.txt_signin,
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
    _signUpKey.currentState!.dispose();
    super.dispose();
  }
}

import 'package:bible_quiz/composants/bouttons/secondary_button.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

import '../../../services/enums/couleur.dart';

class SignUp extends StatefulWidget {
  final VoidCallback setHasAccount;
  const SignUp({Key? key, required this.setHasAccount}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _mailController = TextEditingController();
  final _mdpController = TextEditingController();

  bool hide = true;
  @override
  Widget build(BuildContext context) {
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
            'Création du compte',
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
              texte: 'S\'enregistrer',
              fonction: () =>
                  AuthCrud.addUser(_mailController.text, _mdpController.text)),
          Row(
            children: [
              Flexible(
                flex: 7,
                child: FittedBox(
                  child: Text(
                    'Déjà un compte ?',
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
                        'Connectez-vous',
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
}

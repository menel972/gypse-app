import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

class SecondaryButton extends StatelessWidget {
  final String texte;
  final VoidCallback fonction;
  const SecondaryButton({
    Key? key,
    required this.texte,
    required this.fonction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: fonction,
      child: Text(texte, style: MyTextStyle.buttonWhiteM),
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith((states) =>
            const EdgeInsets.symmetric(vertical: 20, horizontal: 10)),
        backgroundColor:
            MaterialStateProperty.resolveWith((states) => Couleur.secondary),
        side: MaterialStateProperty.resolveWith((states) => const BorderSide(
              width: 0.8,
              color: Couleur.blanc,
            )),
        shape: MaterialStateProperty.resolveWith(
          (states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
      ),
    );
  }
}

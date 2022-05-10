import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

import '../../services/enums/couleur.dart';

class BasicButton extends StatelessWidget {
  final String texte;
  final VoidCallback fonction;
  const BasicButton({
    Key? key,
    required this.texte,
    required this.fonction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: fonction,
      child: Text(texte, style: MyTextStyle.buttonOrangeM),
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith(
            (states) => const EdgeInsets.symmetric(vertical: 20)),
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white.withOpacity(0.1)),
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

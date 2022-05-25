import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

import '../../services/enums/couleur.dart';

class SmallButton extends StatelessWidget {
  final String texte;
  final VoidCallback fonction;
  const SmallButton({
    Key? key,
    required this.texte,
    required this.fonction,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: fonction,
      child: Text(texte, style: MyTextStyle.buttonS),
      style: ButtonStyle(
        padding: MaterialStateProperty.resolveWith(
            (states) => const EdgeInsets.all(0)),
        backgroundColor: MaterialStateProperty.resolveWith(
            (states) => Colors.white.withOpacity(0.2)),
        // side: MaterialStateProperty.resolveWith((states) => BorderSide(
        //       width: 0.8,
        //       color: Couleur.blanc2.withOpacity(0.8),
        //     )),
        shape: MaterialStateProperty.resolveWith(
          (states) =>
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        ),
        overlayColor: MaterialStateProperty.resolveWith(
            (states) => Couleur.secondary.withOpacity(0.2)),
      ),
    );
  }
}

import 'package:flutter/material.dart';

import '../../styles/my_text_style.dart';
import '../../views/home/home_vue.dart';
import '../bouttons/basic_button.dart';
import '../bouttons/primary_button.dart';

class QuitDialog extends StatelessWidget {
  final VoidCallback resumeCountDown;
  const QuitDialog({
    Key? key,
    required this.resumeCountDown,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      alignment: Alignment.center,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      title: Text(
        'QUITTER LA PARTIE',
        style: MyTextStyle.titleOrangeM,
        textAlign: TextAlign.center,
      ),
      content: SizedBox(
        height: 150,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('Êtes-vous sûr.e de vouloir quitter la partie ?',
                textAlign: TextAlign.center, style: MyTextStyle.textNoirS),
            const SizedBox(height: 40),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Expanded(
                  child: PrimaryButton(
                    texte: 'Reprendre',
                    fonction: () {
                      Navigator.pop(context);
                      resumeCountDown();
                    },
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: BasicButton(
                      texte: 'Quitter',
                      fonction: () =>
                          Navigator.pushNamed(context, HomeVue.route)),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}

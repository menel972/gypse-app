import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/providers/user_provider.dart';
import 'package:blur/blur.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../styles/my_text_style.dart';
import '../../views/home/home_vue.dart';
import '../bouttons/basic_button.dart';
import '../bouttons/primary_button.dart';

class QuitDialog extends StatelessWidget {
  // =
  final CountDownController countDownController;
  const QuitDialog({
    Key? key,
    required this.countDownController,
  }) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    // = Provider
    void allRepToFalse() =>
        Provider.of<UserProvider>(context, listen: false).allRepToFalse();

    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.3,
        width: MediaQuery.of(context).size.width * 0.75,
        decoration: BoxDecoration(
            color: Couleur.bleuClair.withOpacity(0.4),
            borderRadius: BorderRadius.circular(20),
            border: Border.all(
              color: Couleur.blanc2,
            )),
        // <> Blur
        child: Blur(
          blur: 3,
          blurColor: Couleur.bleuClair,
          borderRadius: BorderRadius.circular(20),
          overlay: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'QUITTER LA PARTIE',
                  style: MyTextStyle.titlePrimM,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text('Êtes-vous sûr.e de vouloir quitter la partie ?',
                          textAlign: TextAlign.center,
                          style: MyTextStyle.textNoirS),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: PrimaryButton(
                              texte: 'Reprendre',
                              // <!> JeuVue()
                              fonction: () {
                                Navigator.pop(context);
                                countDownController.resume();
                              },
                            ),
                          ),
                          const SizedBox(width: 10),
                          Expanded(
                            child: BasicButton(
                              texte: 'Quitter',
                              couleur: 'bleu',
                              // <!> HomeVue()
                              fonction: () => {
                                Navigator.pushNamed(context, HomeVue.route),
                                allRepToFalse(),
                              },
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          child: Container(),
        ),
      ),
    );
  }
}

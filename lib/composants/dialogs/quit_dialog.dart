import 'package:bible_quiz/services/BLoC/bloc_router.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:blur/blur.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../styles/my_text_style.dart';
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
    final _trad = AppLocalizations.of(context)!;

    return Center(
      child: Container(
        height: MediaQuery.of(context).size.height * 0.4,
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
                  _trad.title_quit.toUpperCase(),
                  style: MyTextStyle.titlePrimM,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 20),
                SizedBox(
                  height: 150,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Text(_trad.txt_confirm_quit,
                          textAlign: TextAlign.center,
                          style: MyTextStyle.textNoirS),
                      const SizedBox(height: 40),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Expanded(
                            child: PrimaryButton(
                              texte: _trad.btn_resume,
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
                              texte: _trad.btn_quit,
                              couleur: 'bleu',
                              // <!> HomeVue()
                              fonction: () => {
                                Navigator.push(
                                  context,
                                  BlocRouter().homeRoute(),
                                ),
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

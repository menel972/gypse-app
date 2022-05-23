import 'package:bible_quiz/composants/bouttons/basic_button.dart';
import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/enums/couleur.dart';
import '../../services/models/settings_model.dart';
import '../../services/providers/user_provider.dart';
import '../bouttons/primary_button.dart';

class SettingsModal extends StatefulWidget {
  // {} Show Modal Settings
  static Future showSettings(
      BuildContext context) async {
    return await showModalBottomSheet(
      context: context,
      backgroundColor: Couleur.bleuClair.withOpacity(0.6),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) =>
          const SettingsModal(),
    );
  }

  const SettingsModal({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsModal> createState() => _SettingsModalState();
}

// <> _SettingsModalState()
class _SettingsModalState extends State<SettingsModal> {
  // <> Build
  @override
  Widget build(BuildContext context) {
    Setting preset = Provider.of<UserProvider>(context).userSettings;
    MyUser privateUser = Provider.of<UserProvider>(context).user;

    return Blur(
      blur: 3,
      blurColor: Couleur.bleuClair,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      overlay: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // TODO : Mode Sombre ou pas ?
            // const Text('Couleurs :'),
            // Row(
            //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            //   children: [
            //     Flexible(
            //       flex: 1,
            //       child: RadioListTile(
            //         title: const FittedBox(child: Text('jour')),
            //         subtitle: const FittedBox(child: Text('couleurs clairs')),
            //         value: 1,
            //         groupValue: preset.luminosite,
            //         onChanged: (value) => setState(() {
            //           preset.luminosite = 1;
            //         }),
            //       ),
            //     ),
            //     Flexible(
            //       flex: 1,
            //       child: RadioListTile(
            //         title: const FittedBox(child: Text('nuit')),
            //         subtitle: const FittedBox(child: Text('couleurs sombres')),
            //         value: 2,
            //         groupValue: preset.luminosite,
            //         onChanged: (value) => setState(() {
            //           preset.luminosite = 2;
            //         }),
            //       ),
            //     ),
            //   ],
            // ),
            Text(
              'Difficulté :',
              style: MyTextStyle.textBleuM,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: FittedBox(
                        child: Text(
                      'facile',
                      style: MyTextStyle.textBleuM,
                    )),
                    subtitle: FittedBox(
                        child: Text(
                      '2 choix',
                      style: MyTextStyle.textBleuM,
                    )),
                    value: 1,
                    groupValue: preset.niveau,
                    onChanged: (value) => setState(() {
                      preset.niveau = 1;
                    }),
                    activeColor: Couleur.bleu,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: FittedBox(
                        child: Text(
                      'Moyen',
                      style: MyTextStyle.textBleuM,
                    )),
                    subtitle: FittedBox(
                        child: Text(
                      '3 choix',
                      style: MyTextStyle.textBleuM,
                    )),
                    value: 2,
                    groupValue: preset.niveau,
                    onChanged: (value) => setState(() {
                      preset.niveau = 2;
                    }),
                    activeColor: Couleur.bleu,

                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: FittedBox(
                        child: Text(
                      'Difficile',
                      style: MyTextStyle.textBleuM,
                    )),
                    subtitle: FittedBox(
                        child: Text(
                      '4 choix',
                      style: MyTextStyle.textBleuM,
                    )),
                    value: 3,
                    groupValue: preset.niveau,
                    onChanged: (value) => setState(() {
                      preset.niveau = 3;
                    }),
                    activeColor: Couleur.bleu,

                  ),
                ),
              ],
            ),
            Text(
              'Chronomètre :',
              style: MyTextStyle.textBleuM,
            ),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: FittedBox(
                        child: Text(
                      'facile',
                      style: MyTextStyle.textBleuM,
                    )),
                    subtitle: FittedBox(
                        child: Text(
                      '40 sec',
                      style: MyTextStyle.textBleuM,
                    )),
                    value: 40,
                    groupValue: preset.chrono,
                    onChanged: (value) => setState(() {
                      preset.chrono = 40;
                    }),
                    activeColor: Couleur.bleu,

                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: FittedBox(
                        child: Text(
                      'Moyen',
                      style: MyTextStyle.textBleuM,
                    )),
                    subtitle: FittedBox(
                        child: Text(
                      '30 sec',
                      style: MyTextStyle.textBleuM,
                    )),
                    value: 30,
                    groupValue: preset.chrono,
                    onChanged: (value) => setState(() {
                      preset.chrono = 30;
                    }),
                    activeColor: Couleur.bleu,

                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: FittedBox(
                        child: Text(
                      'Difficile',
                      style: MyTextStyle.textBleuM,
                    )),
                    subtitle: FittedBox(
                        child: Text(
                      '20 sec',
                      style: MyTextStyle.textBleuM,
                    )),
                    value: 20,
                    groupValue: preset.chrono,
                    onChanged: (value) => setState(() {
                      preset.chrono = 20;
                    }),
                    activeColor: Couleur.bleu,

                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Expanded(
                  child: BasicButton(
                    texte: 'Annuler',
                    couleur: 'bleu',
                    fonction: () => Navigator.pop(context, false),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: PrimaryButton(
                    texte: 'Valider',
                    fonction: () => {
                      Provider.of<UserProvider>(context, listen: false)
                          .saveNewSettings(preset),
                      UserCrud.updateUser(privateUser),
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('les paramètres ont été modifiés.')),
                      ),
                      Navigator.pop(context, true),
                    },
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      child: Container(
        padding: const EdgeInsets.all(10),
      ),
    );
  }
}

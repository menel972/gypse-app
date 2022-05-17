import 'package:bible_quiz/composants/bouttons/basic_button.dart';
import 'package:bible_quiz/services/providers/settings_provider.dart';
import 'package:blur/blur.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/enums/couleur.dart';
import '../../services/models/settings_model.dart';
import '../bouttons/primary_button.dart';

class SettingsModal extends StatefulWidget {
  // =
  final CountDownController countDownController;

  // {} Show Modal Settings
  static Future showSettings(
      BuildContext context, CountDownController countDownController) async {
    bool reset = await showModalBottomSheet(
      context: context,
      backgroundColor: Couleur.bleuClair.withOpacity(0.6),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) =>
          SettingsModal(countDownController: countDownController),
    );

    Settings settings =
        Provider.of<SettingsProvider>(context, listen: false).settings;

    void allRepToFalse(int niv) =>
        Provider.of<SettingsProvider>(context, listen: false)
            .allRepToFalse(niv);

    if (reset) {
      countDownController.restart();
      return allRepToFalse(settings.niveau);
    }
    return countDownController.resume();
  }

  const SettingsModal({
    Key? key,
    required this.countDownController,
  }) : super(key: key);

  @override
  State<SettingsModal> createState() => _SettingsModalState();
}

// <> _SettingsModalState()
class _SettingsModalState extends State<SettingsModal> {
  // <> Build
  @override
  Widget build(BuildContext context) {
    Settings preset = Provider.of<SettingsProvider>(context).settings;

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
            const Text('Couleurs :'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: const FittedBox(child: Text('jour')),
                    subtitle: const FittedBox(child: Text('couleurs clairs')),
                    value: 1,
                    groupValue: preset.luminosite,
                    onChanged: (value) => setState(() {
                      preset.luminosite = 1;
                    }),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: const FittedBox(child: Text('nuit')),
                    subtitle: const FittedBox(child: Text('couleurs sombres')),
                    value: 2,
                    groupValue: preset.luminosite,
                    onChanged: (value) => setState(() {
                      preset.luminosite = 2;
                    }),
                  ),
                ),
              ],
            ),
            const Text('Difficulté :'),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: const FittedBox(child: Text('facile')),
                    subtitle: const FittedBox(child: Text('2 choix')),
                    value: 1,
                    groupValue: preset.niveau,
                    onChanged: (value) => setState(() {
                      preset.niveau = 1;
                    }),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: const FittedBox(child: Text('Moyen')),
                    subtitle: const FittedBox(child: Text('3 choix')),
                    value: 2,
                    groupValue: preset.niveau,
                    onChanged: (value) => setState(() {
                      preset.niveau = 2;
                    }),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: const FittedBox(child: Text('Difficile')),
                    subtitle: const FittedBox(child: Text('4 choix')),
                    value: 3,
                    groupValue: preset.niveau,
                    onChanged: (value) => setState(() {
                      preset.niveau = 3;
                    }),
                  ),
                ),
              ],
            ),
            const Text('Chronomètre :'),
            Row(
              children: [
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: const FittedBox(child: Text('facile')),
                    subtitle: const FittedBox(child: Text('40 sec')),
                    value: 40,
                    groupValue: preset.chrono,
                    onChanged: (value) => setState(() {
                      preset.chrono = 40;
                    }),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: const FittedBox(child: Text('Moyen')),
                    subtitle: const FittedBox(child: Text('30 sec')),
                    value: 30,
                    groupValue: preset.chrono,
                    onChanged: (value) => setState(() {
                      preset.chrono = 30;
                    }),
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: RadioListTile(
                    title: const FittedBox(child: Text('Difficile')),
                    subtitle: const FittedBox(child: Text('20 sec')),
                    value: 20,
                    groupValue: preset.chrono,
                    onChanged: (value) => setState(() {
                      preset.chrono = 20;
                    }),
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
                    couleur: 'orange',
                    fonction: () => Navigator.pop(context, false),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: PrimaryButton(
                    texte: 'Valider',
                    fonction: () => {
                      Provider.of<SettingsProvider>(context, listen: false)
                          .changeSettings(preset),
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

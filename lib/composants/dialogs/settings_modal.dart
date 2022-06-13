import 'package:auto_size_text/auto_size_text.dart';
import 'package:bible_quiz/composants/bouttons/basic_button.dart';
import 'package:bible_quiz/services/BLoC/bloc_provider.dart';
import 'package:bible_quiz/services/BLoC/provided/settings_bloc.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../services/enums/couleur.dart';
import '../../services/models/settings_model.dart';
import '../../services/providers/user_provider.dart';
import '../bouttons/primary_button.dart';

class SettingsModal extends StatelessWidget {
  // {} Show Modal Settings
  static Future showSettings(BuildContext context, Setting preset) async {
    return await showModalBottomSheet(
      context: context,
      backgroundColor: Couleur.bleuClair.withOpacity(0.6),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) => BlocProvider<SettingsBloc>(
          bloc: SettingsBloc(preset: preset), child: const SettingsModal()),
    );
  }

  const SettingsModal({
    Key? key,
  }) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;

    // = BLoC
    final _bloc = BlocProvider.of<SettingsBloc>(context);

    return StreamBuilder<Setting>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          final _preset = snapshot.data!;
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
                  Text(
                    '${_trad.title_diff} :',
                    style: MyTextStyle.textBleuM,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Flexible(
                        flex: 1,
                        child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: AutoSizeText(
                            _trad.label_easy,
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 16,
                          ),
                          subtitle: AutoSizeText(
                            '2 ${_trad.sub_choix}',
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 14,
                          ),
                          value: 1,
                          groupValue: _preset.niveau,
                          onChanged: (value) => _bloc.setLevel(1),
                          activeColor: Couleur.bleu,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: AutoSizeText(
                            _trad.label_medium,
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 16,
                          ),
                          subtitle: AutoSizeText(
                            '3 ${_trad.sub_choix}',
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 14,
                          ),
                          value: 2,
                          groupValue: _preset.niveau,
                          onChanged: (value) => _bloc.setLevel(2),
                          activeColor: Couleur.bleu,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: AutoSizeText(
                            _trad.label_hard,
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 16,
                          ),
                          subtitle: AutoSizeText(
                            '4 ${_trad.sub_choix}',
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 14,
                          ),
                          value: 3,
                          groupValue: _preset.niveau,
                          onChanged: (value) => _bloc.setLevel(3),
                          activeColor: Couleur.bleu,
                        ),
                      ),
                    ],
                  ),
                  Text(
                    '${_trad.title_chrono} :',
                    style: MyTextStyle.textBleuM,
                  ),
                  Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: AutoSizeText(
                            _trad.label_easy,
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 16,
                          ),
                          subtitle: AutoSizeText(
                            '30 ${_trad.sub_time}',
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 14,
                          ),
                          value: 30,
                          groupValue: _preset.chrono,
                          onChanged: (value) => _bloc.setChrono(30),
                          activeColor: Couleur.bleu,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: AutoSizeText(
                            _trad.label_medium,
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 16,
                          ),
                          subtitle: AutoSizeText(
                            '20 ${_trad.sub_time}',
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 14,
                          ),
                          value: 20,
                          groupValue: _preset.chrono,
                          onChanged: (value) => _bloc.setChrono(20),
                          activeColor: Couleur.bleu,
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: RadioListTile(
                          contentPadding: const EdgeInsets.all(0),
                          title: AutoSizeText(
                            _trad.label_hard,
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 16,
                          ),
                          subtitle: AutoSizeText(
                            '10 ${_trad.sub_time}',
                            style: MyTextStyle.textBleuM,
                            maxFontSize: 14,
                          ),
                          value: 10,
                          groupValue: _preset.chrono,
                          onChanged: (value) => _bloc.setChrono(10),
                          activeColor: Couleur.bleu,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Row(
                    children: [
                      Expanded(
                        child: BasicButton(
                          texte: _trad.btn_annule,
                          couleur: 'bleu',
                          fonction: () => Navigator.pop(context, false),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: PrimaryButton(
                          texte: _trad.btn_valide,
                          fonction: () => {
                            Provider.of<UserProvider>(context, listen: false)
                                .saveNewSettings(_preset),
                            UserCrud.updateSettings(
                                AuthCrud.currentUser.uid, _preset),
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                  content:
                                      Text(_trad.snack_settings),
                                backgroundColor: Couleur.secondary,
                              ),
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
        });
  }
}

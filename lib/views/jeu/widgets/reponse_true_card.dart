import 'package:auto_size_text/auto_size_text.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/r_lang.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


import '../../../services/models/reponse_model.dart';

class ReponseTrueCard extends StatelessWidget {
  // =
  final int i;
  final Reponse rep;
  final bool selected;

  const ReponseTrueCard({
    Key? key,
    required this.i,
    required this.rep,
    required this.selected,
  }) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    // = Locale
    final _locale = AppLocalizations.of(context)!.localeName;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
          decoration: BoxDecoration(
            color: selected ? Couleur.secondary : Couleur.orangeClair,
            border: Border.all(
              width: 2,
              color: selected ? Couleur.blanc : Couleur.orangeBorder,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Flexible(
                flex: 1,
                child: Text((i + 1).toString() + '.',
                    style: selected
                        ? MyTextStyle.textValidS
                        : MyTextStyle.textBleuS),
              ),
              Flexible(
                flex: 4,
                child: AutoSizeText(
                  RLang.getLang(rep, _locale).texte,
                  minFontSize: 12,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style:
                      selected ? MyTextStyle.textValidS : MyTextStyle.textBleuS,
                ),
              ),
              Flexible(
                flex: 1,
                child: Visibility(
                  visible: selected,
                  child: const Icon(
                    Icons.check_circle_outline,
                    color: Couleur.orangeClair,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

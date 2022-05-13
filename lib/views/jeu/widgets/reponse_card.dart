import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/models/reponse_model.dart';
import '../../../services/models/settings_model.dart';
import '../../../services/providers/settings_provider.dart';

class ReponseCard extends StatelessWidget {
  // =
  final Reponse rep;
  final int i;

  const ReponseCard({
    Key? key,
    required this.i,
    required this.rep,
  }) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    Settings settings = Provider.of<SettingsProvider>(context).settings;
    List<bool> select =
        Provider.of<SettingsProvider>(context).getRep(settings.niveau);

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
          decoration: BoxDecoration(
            color: select[i]
                ? rep.confirme
                    ? Couleur.secondAccent
                    : Couleur.orangeBorder
                : Couleur.orangeClair,
            border: Border.all(
                color: select[i] && !rep.confirme
                    ? Colors.red
                    : Couleur.orangeBorder),
            borderRadius: BorderRadius.circular(10),
          ),
          width: double.infinity,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text((i + 1).toString() + '.',
                  style: select[i] && !rep.confirme
                      ? MyTextStyle.textRougeS
                      : MyTextStyle.textBleuS),
              Text(rep.texte,
                  style: select[i] && !rep.confirme
                      ? MyTextStyle.textRougeS
                      : MyTextStyle.textBleuS),
              Visibility(
                visible: select[i],
                child: Icon(
                  select[i] && rep.confirme
                      ? Icons.check_circle_outline
                      : Icons.highlight_off,
                  color: !rep.confirme ? Colors.red : Couleur.primary,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:auto_size_text/auto_size_text.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../services/models/reponse_model.dart';
import '../../../services/providers/user_provider.dart';

class ReponseTrueCard extends StatelessWidget {
  // =
  final Reponse rep;
  final int i;

  const ReponseTrueCard({
    Key? key,
    required this.i,
    required this.rep,
  }) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    List<bool> select = Provider.of<UserProvider>(context).reponses;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5),
      child: Card(
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
          decoration: BoxDecoration(
            color: select[i] ? Couleur.secondary : Couleur.orangeClair,
            border: Border.all(
              width: 2,
              color: select[i] ? Couleur.blanc : Couleur.orangeBorder,
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
                    style: select[i]
                        ? MyTextStyle.textValidS
                        : MyTextStyle.textBleuS),
              ),
              Flexible(
                flex: 4,
                child: AutoSizeText(
                  rep.texte + ' ' + rep.id,
                  minFontSize: 12,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: select[i]
                      ? MyTextStyle.textValidS
                      : MyTextStyle.textBleuS,
                ),
              ),
              Flexible(
                flex: 1,
                child: Visibility(
                  visible: select[i],
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

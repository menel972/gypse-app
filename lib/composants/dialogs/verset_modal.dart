import 'package:auto_size_text/auto_size_text.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/r_lang.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:url_launcher/url_launcher_string.dart';

class VersetModal extends StatelessWidget {
  // =
  final Reponse rep;
  // {} show verset modal
  static Future showVerset(BuildContext context, Reponse rep) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: Couleur.bleuClair.withOpacity(0.5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) => VersetModal(rep: rep),
    );
  }

  const VersetModal({
    Key? key,
    required this.rep,
  }) : super(key: key);

  Future<void> _launchVerse(String url) async {
    if (!await launchUrlString(url)) throw 'Problem url';
  }

  // <> Build
  @override
  Widget build(BuildContext context) {
    // = Locale
    final String _locale = AppLocalizations.of(context)!.localeName;

    final String _url = RLang.getLang(rep, _locale).link!;


    return Blur(
      blur: 3,
      blurColor: Couleur.bleuClair,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
      ),
      overlay: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              RLang.getLang(rep, _locale).texte,
              style: MyTextStyle.textBleuM,
              textAlign: TextAlign.justify,
              maxLines: 1,
              overflow: TextOverflow.fade,
            ),
            const SizedBox(height: 30),
            AutoSizeText(
              RLang.getLang(rep, _locale).verset!,
              style: MyTextStyle.textBleuM,
              textAlign: TextAlign.justify,
              maxLines: 15,
            ),
            const SizedBox(height: 20),
            GestureDetector(
              onTap: () => _launchVerse(_url),
              child: Text(RLang.getLang(rep, _locale).versetRef!,
                  style: MyTextStyle.textOrangeM),
            ),
          ],
        ),
      ),
    );
  }
}

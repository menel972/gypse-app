import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_svg/svg.dart';

class NiveauIcon extends StatelessWidget {
  final int niveau;
  const NiveauIcon({Key? key, required this.niveau}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;

    String getNivIcon(int niv) {
      switch (niv) {
        case 1:
          return 'assets/images/facile.svg';
        case 2:
          return 'assets/images/moyen.svg';
        default:
          return 'assets/images/difficile.svg';
      }
    }

    String getNivLabel(int niv) {
      switch (niv) {
        case 1:
          return _trad.label_easy;
        case 2:
          return _trad.label_medium;
        default:
          return _trad.label_hard;
      }
    }

    return Row(
      children: [
        Text(
          getNivLabel(niveau),
          style: MyTextStyle.labelOrangeMB,
        ),
        SvgPicture.asset(getNivIcon(niveau), height: 30),
      ],
    );
  }
}

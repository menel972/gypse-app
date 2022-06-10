import 'package:bible_quiz/composants/bouttons/primary_button.dart';
import 'package:bible_quiz/composants/splashscreen/splash_screen.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/enums/my_size.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

import '../bouttons/basic_button.dart';

class DeleteDialog extends StatelessWidget {
  const DeleteDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = MySize().size(context);

    return Center(
      child: Container(
        height: _size.height * 0.35,
        width: _size.width * 0.9,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: Couleur.bleuClair.withOpacity(0.4),
          border: Border.all(color: Couleur.blanc2),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Blur(
          blur: 3,
          blurColor: Couleur.bleuClair,
          borderRadius: BorderRadius.circular(20),
          child: Container(),
          overlay: SizedBox(
            height: _size.height * 0.5,
            child: ListView.separated(
              padding: EdgeInsets.symmetric(
                vertical: _size.height * 0.05,
                horizontal: _size.width * 0.03,
              ),
              itemCount: 3,
              separatorBuilder: (context, i) =>
                  SizedBox(height: _size.height * 0.03),
              itemBuilder: (context, i) => [
                Text(
                  'SUPPRESSION DU PROFILE',
                  style: MyTextStyle.titlePrimM,
                  textAlign: TextAlign.center,
                ),
                Text(
                  'Êtes-vous sûr.e de vouloir supprimer votre profile GYPSE. Cette action est définitive.',
                  style: MyTextStyle.textNoirS,
                  textAlign: TextAlign.center,
                ),
                Row(
                  children: [
                    Expanded(
                      child: PrimaryButton(
                        texte: 'Supprimer',
                        fonction: () => {
                          AuthCrud.deleteAccount(),
                          Navigator.pushNamed(context, Splashscreen.route),
                        },
                      ),
                    ),
                    SizedBox(width: _size.width * 0.05),
                    Expanded(
                      child: BasicButton(
                        texte: 'Annuler',
                        couleur: 'bleu',
                        fonction: () => Navigator.pop(context),
                      ),
                    ),
                  ],
                )
              ][i],
            ),
          ),
        ),
      ),
    );
  }
}

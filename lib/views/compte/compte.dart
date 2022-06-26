import 'package:auto_size_text/auto_size_text.dart';
import 'package:bible_quiz/composants/bouttons/basic_button.dart';
import 'package:bible_quiz/composants/cards/info_card.dart';
import 'package:bible_quiz/composants/dialogs/delete_dialog.dart';
import 'package:bible_quiz/services/BLoC/bloc_router.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/enums/my_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../composants/bouttons/primary_button.dart';
import '../../services/providers/user_provider.dart';
import '../../styles/my_text_style.dart';



class Compte extends StatelessWidget {
  const Compte({Key? key}) : super(key: key);

  confirmDelete(BuildContext context) {
    return showDialog(
        context: context, builder: (context) => const DeleteDialog());
  }

  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;
    Size _size = MySize().size(context);
    // = Provider
    String method =
        Provider.of<UserProvider>(context, listen: true).userIdMethod;
        
    return Center(
      child: ListView.separated(
        itemCount: 6,
        padding: EdgeInsets.symmetric(
            vertical: _size.height * 0.05, horizontal: _size.width * 0.05),
        separatorBuilder: (context, i) {
          switch (i) {
            case 0:
              return SizedBox(height: _size.height * 0.05);
            case 4:
              return SizedBox(height: _size.height * 0.05);
            default:
              return SizedBox(height: _size.height * 0.015);
          }
        },
        itemBuilder: (context, i) => [
          SvgPicture.asset(
            'assets/images/splashicon_gypse.svg',
            height: 70,
          ),
          InfoCard(
            icon: Icons.person_outline,
            label: '${_trad.label_name} :',
            data: AutoSizeText(
              AuthCrud.currentUser.displayName!,
              style: MyTextStyle.labelM,
              minFontSize: 16,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          InfoCard(
            icon: Icons.connect_without_contact_outlined,
            label: '${_trad.label_connect_type} :',
            data: AutoSizeText(
              method,
              style: MyTextStyle.labelM,
              minFontSize: 16,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
          ),
          InfoCard(
            icon: Icons.alternate_email_outlined,
            label: '${_trad.label_mail} :',
            data: AutoSizeText(
              AuthCrud.currentUser.email!,
              style: MyTextStyle.labelM,
              minFontSize: 16,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ), 
          ),
          InfoCard(
            icon: Icons.lock_outline,
            label: '${_trad.label_mdp} :',
            data: TextButton(
              onPressed: () => AuthCrud.updatePassword(context),
              child: AutoSizeText(
                'Changer de mot de passe',
                style: MyTextStyle.labelOrangeM,
                minFontSize: 16,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Row(
            children: [
              Expanded(
                child: BasicButton(
                  texte: _trad.btn_suppr,
                  fonction: () => {
                    confirmDelete(context),
                  },
                  couleur: 'orange',
                ),
              ),
              SizedBox(width: _size.width * 0.05),
              Expanded(
                child: PrimaryButton(
                  texte: _trad.btn_logout,
                  fonction: () => {
                    AuthCrud.signOut(context),
                    Navigator.push(
                      context,
                      BlocRouter().authRoute(),
                    )
                  },
                ),
              ),
            ],
          ),
        ][i],
      ),
    );
  }
}

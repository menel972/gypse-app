import 'package:bible_quiz/composants/bouttons/basic_button.dart';
import 'package:bible_quiz/composants/cards/info_card.dart';
import 'package:bible_quiz/services/BLoC/bloc_router.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/enums/my_size.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';

import '../../services/providers/user_provider.dart';



class Compte extends StatefulWidget {
  const Compte({Key? key}) : super(key: key);

  @override
  State<Compte> createState() => _CompteState();
}

class _CompteState extends State<Compte> {
  @override
  Widget build(BuildContext context) {
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
            label: 'Nom d\'utilisateur :',
            data: AuthCrud.currentUser.displayName!,
          ),
          InfoCard(
            icon: Icons.connect_without_contact_outlined,
            label: 'Type de connexion :',
            data: method,
          ),
          InfoCard(
            icon: Icons.alternate_email_outlined,
            label: 'Adresse mail :',
            data: AuthCrud.currentUser.email!,
          ),
          const InfoCard(
            icon: Icons.lock_outline,
            label: 'Mot de passe :',
            data: 'Changer de mot de passe',
          ),
          BasicButton(
            texte: 'Déconnexion',
            fonction: () => {
              AuthCrud.signOut(),
              Navigator.push(
                context,
                BlocRouter().authRoute(),
              )
            },
            couleur: 'orange',
          ),
        ][i],
      ),
    );
  }
}

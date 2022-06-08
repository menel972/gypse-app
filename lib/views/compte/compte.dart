import 'package:bible_quiz/composants/bouttons/basic_button.dart';
import 'package:bible_quiz/composants/cards/info_card.dart';
import 'package:bible_quiz/services/BLoC/bloc_router.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
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
    // = Provider
    String method =
        Provider.of<UserProvider>(context, listen: true).userIdMethod;
        
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SvgPicture.asset(
              'assets/images/splashicon_gypse.svg',
              height: 70,
            ),
            const SizedBox(height: 40),
            InfoCard(
                icon: Icons.connect_without_contact_outlined,
                label: 'Connexion :',
                data: method),
            const SizedBox(height: 15),
            InfoCard(
              icon: Icons.person_outline,
              label: 'Adresse mail :',
              data: AuthCrud.currentUser.email!,
            ),
            const SizedBox(height: 15),
            const InfoCard(
              icon: Icons.lock_outline,
              label: 'Mot de passe :',
              data: '',
            ),
            const SizedBox(height: 30),
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
          ],
        ),
      ),
    );
  }
}

import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/livres/widgets/livres_recherche.dart';
import 'package:flutter/material.dart';

import '../../services/enums/couleur.dart';

class LivresVue extends StatelessWidget {
  static const String route = './livres';
  const LivresVue({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text('Livres', style: MyTextStyle.titleOrangeM),
        actions: [
          // TODO : Navigation vers les settings
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
            splashRadius: 20,
            splashColor: Couleur.secondary.withOpacity(0.5),
          ),
        ],
      ),
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/jeu_bkg.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: const LivresRecherche(),
      ),
    );
  }
}

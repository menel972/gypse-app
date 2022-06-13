import 'package:bible_quiz/services/BLoC/bloc_provider.dart';
import 'package:bible_quiz/services/BLoC/provided/livre_liste_bloc.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/livres/widgets/livres_recherche.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';



class LivresVue extends StatelessWidget {
  static const String route = './livres';
  const LivresVue({Key? key}) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;

    return Scaffold(
      extendBodyBehindAppBar: true,
      // <> AppBar
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              FocusScope.of(context).unfocus();
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios)),
        title: Text(_trad.title_book, style: MyTextStyle.titleM),
      ),
      // <> Body
      body: Container(
        padding: const EdgeInsets.only(top: 100),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/images/jeu_bkg.png'),
            fit: BoxFit.cover,
          ),
        ),
        // <!> LivresRecherche()
        child: BlocProvider<LivreListeBloc>(
          bloc: LivreListeBloc(),
          child: const LivresRecherche(),
        ),
      ),
    );
  }
}

import 'package:bible_quiz/services/BLoC/bloc_provider.dart';
import 'package:bible_quiz/services/BLoC/provided/livre_liste_bloc.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/livres/widgets/livres_liste.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class LivresRecherche extends StatefulWidget {
  const LivresRecherche({Key? key}) : super(key: key);

  @override
  State<LivresRecherche> createState() => _LivresRechercheState();
}

// <> _LivresRechercheState()
class _LivresRechercheState extends State<LivresRecherche> {

  // = Search bar Controller
  final TextEditingController _controller = TextEditingController();


  // <> Build
  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;

    // = BLoC
    final _bloc = BlocProvider.of<LivreListeBloc>(context);

    return StreamBuilder<List<String>>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          final livres = snapshot.data!;
          return Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                // <> SearchBar
                TextFormField(
                  style: MyTextStyle.textM,
                  controller: _controller,
                  onChanged: (value) => _bloc.filtre(value, _trad.localeName),
                  decoration: InputDecoration(
                    label: Text('${_trad.title_book}...',
                        style: MyTextStyle.textS),
                    suffixIcon: _controller.text != ''
                        ? IconButton(
                            onPressed: () => {
                              _controller.clear(),
                              _bloc.clearFiltre(_trad.localeName),
                            },
                            icon: const Icon(Icons.clear, color: Couleur.blanc),
                          )
                        : const Icon(Icons.search, color: Couleur.blanc),
                    border: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Couleur.blanc)),
                    enabledBorder: const UnderlineInputBorder(
                        borderSide: BorderSide(color: Couleur.blanc)),
                    contentPadding: const EdgeInsets.symmetric(horizontal: 8.0),
                  ),
                ),
                Expanded(
                  // <!> LivresListe()
                  child: LivresListe(livres: livres),
                ),
              ],
            ),
          );
        });
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

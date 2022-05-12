import 'package:bible_quiz/services/data.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/livres/widgets/livres_liste.dart';
import 'package:flutter/material.dart';

class LivresRecherche extends StatefulWidget {
  const LivresRecherche({Key? key}) : super(key: key);

  @override
  State<LivresRecherche> createState() => _LivresRechercheState();
}

class _LivresRechercheState extends State<LivresRecherche> {
  final TextEditingController _controller = TextEditingController();
  List<String> get livres => Data.livres
      .where((livre) =>
          livre.toLowerCase().startsWith(_controller.text.toLowerCase()))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            style: MyTextStyle.textM,
            controller: _controller,
            onChanged: (value) => setState(() {}),
            decoration: InputDecoration(
              label: Text('Livre...', style: MyTextStyle.textS),
              suffixIcon: _controller.text != ''
                  ? IconButton(
                      onPressed: () => setState(() {
                        _controller.clear();
                      }),
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
            child: LivresListe(livres: livres),
          ),
        ],
      ),
    );
  }
}

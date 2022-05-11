import 'package:bible_quiz/services/data.dart';
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
          livre.toLowerCase().contains(_controller.text.toLowerCase()))
      .toList();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          TextFormField(
            controller: _controller,
            onChanged: (value) => setState(() {}),
            decoration: InputDecoration(
              labelText: 'Livre...',
              suffixIcon: _controller.text != ''
                  ? const Icon(Icons.clear)
                  : const Icon(Icons.search),
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

import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:flutter/material.dart';

import '../../../services/data.dart';

class ReponseVue extends StatefulWidget {
  final String questionId;
  final int niveau;

  const ReponseVue({
    Key? key,
    required this.questionId,
    required this.niveau,
  }) : super(key: key);

  @override
  State<ReponseVue> createState() => _ReponseVueState();
}

class _ReponseVueState extends State<ReponseVue> {
  List<Reponse> get reps =>
      Data.reponses.where((r) => r.questionId == widget.questionId).toList();

  List<bool> select = [false, false, false, false];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 4,
      itemBuilder: (context, i) {
        final rep = reps[i];
        return GestureDetector(
          onTap: () => setState(() {
            select[i] = !select[i];
          }),
          child: Card(
            child: Container(
              padding: const EdgeInsets.all(8.0),
              color: select[i]
                  ? rep.confirme
                      ? Colors.amber[800]
                      : const Color(0xFFA70C00)
                  : Colors.white,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text((i + 1).toString() + '.'),
                  Text(rep.texte),
                  Visibility(
                    visible: select[i],
                    child: Icon(
                      select[i] && rep.confirme
                          ? Icons.check_circle
                          : Icons.highlight_off,
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

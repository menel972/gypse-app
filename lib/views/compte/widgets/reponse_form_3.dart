import 'package:bible_quiz/composants/bouttons/secondary_fab_button.dart';
import 'package:bible_quiz/services/crud/reponse_crud.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:flutter/material.dart';

class ReponseForm3 extends StatefulWidget {
  final String questionId;
  const ReponseForm3({
    Key? key,
    required this.questionId,
  }) : super(key: key);

  @override
  State<ReponseForm3> createState() => _ReponseForm3State();
}

class _ReponseForm3State extends State<ReponseForm3> {
  bool value = false;

  static final TextEditingController _reponse3Controller =
      TextEditingController();
  static final TextEditingController _versetRef3Controller =
      TextEditingController();
  static final TextEditingController _verset3Controller =
      TextEditingController();

  void addReponse() {
    final newReponse = Reponse(
      id: '',
      questionId: widget.questionId,
      texte: _reponse3Controller.text,
      confirme: value,
      versetRef: value ? _versetRef3Controller.text : null,
      verset: value ? _verset3Controller.text : null,
    );

    ReponseCrud.addReponse(newReponse);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  key: UniqueKey(),
                  controller: _reponse3Controller,
                  decoration: const InputDecoration(
                    labelText: 'Réponse',
                  ),
                ),
              ),
              Checkbox(
                  value: value,
                  onChanged: (_) => setState(() {
                        value = !value;
                      })),
            ],
          ),
          Visibility(
            visible: value,
            child: TextFormField(
              controller: _versetRef3Controller,
              decoration: const InputDecoration(
                labelText: 'Référence du verset',
              ),
            ),
          ),
          Visibility(
            visible: value,
            child: TextFormField(
              controller: _verset3Controller,
              decoration: const InputDecoration(
                labelText: 'Verset',
              ),
            ),
          ),
          const SizedBox(height: 35),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SecondaryFabButton(
                  icon: Icons.send,
                  fonction: () => {
                        addReponse(),
                        ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text('Réponse enregistrée !'))),
                      }),
            ],
          ),
        ],
      ),
    );
  }
}

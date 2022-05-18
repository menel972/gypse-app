import 'package:bible_quiz/composants/bouttons/secondary_fab_button.dart';
import 'package:bible_quiz/services/crud/reponse_crud.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:flutter/material.dart';

class ReponseForm1 extends StatefulWidget {
  final String questionId;
  const ReponseForm1({
    Key? key,
    required this.questionId,
  }) : super(key: key);

  @override
  State<ReponseForm1> createState() => _ReponseForm1State();
}

class _ReponseForm1State extends State<ReponseForm1> {
  bool value = false;

  static final TextEditingController _reponse1Controller =
      TextEditingController();
  static final TextEditingController _versetRef1Controller =
      TextEditingController();
  static final TextEditingController _verset1Controller =
      TextEditingController();

  void addReponse() {
    final newReponse = Reponse(
      id: '',
      questionId: widget.questionId,
      texte: _reponse1Controller.text,
      confirme: value,
      versetRef: value ? _versetRef1Controller.text : null,
      verset: value ? _verset1Controller.text : null,
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
                  controller: _reponse1Controller,
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
              controller: _versetRef1Controller,
              decoration: const InputDecoration(
                labelText: 'Référence du verset',
              ),
            ),
          ),
          Visibility(
            visible: value,
            child: TextFormField(
              controller: _verset1Controller,
              decoration: const InputDecoration(
                labelText: 'Verset',
              ),
            ),
          ),
          const SizedBox(height: 15),
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

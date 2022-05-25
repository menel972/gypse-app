import 'package:bible_quiz/composants/bouttons/secondary_fab_button.dart';
import 'package:bible_quiz/services/crud/reponse_crud.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:flutter/material.dart';

class ReponseForm2 extends StatefulWidget {
  final String questionId;
  const ReponseForm2({
    Key? key,
    required this.questionId,
  }) : super(key: key);

  @override
  State<ReponseForm2> createState() => _ReponseForm2State();
}

class _ReponseForm2State extends State<ReponseForm2> {
  bool value = false;

  static final TextEditingController _reponse2Controller =
      TextEditingController();
  static final TextEditingController _versetRef2Controller =
      TextEditingController();
  static final TextEditingController _verset2Controller =
      TextEditingController();

  void addReponse() {
    final newReponse = Reponse(
      id: '',
      questionId: widget.questionId,
      texte: _reponse2Controller.text,
      confirme: value,
      versetRef: value ? _versetRef2Controller.text : null,
      verset: value ? _verset2Controller.text : null,
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
                  controller: _reponse2Controller,
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
              controller: _versetRef2Controller,
              decoration: const InputDecoration(
                labelText: 'Référence du verset',
              ),
            ),
          ),
          Visibility(
            visible: value,
            child: TextFormField(
              controller: _verset2Controller,
              decoration: const InputDecoration(
                labelText: 'Verset',
              ),
            ),
          ),
          const SizedBox(height: 25),
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
  @override
  void dispose() {
    _reponse2Controller.dispose();
    _verset2Controller.dispose();
    _versetRef2Controller.dispose();
    super.dispose();
  }
}

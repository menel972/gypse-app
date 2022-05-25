import 'package:bible_quiz/composants/bouttons/secondary_fab_button.dart';
import 'package:bible_quiz/services/crud/reponse_crud.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:flutter/material.dart';

class ReponseForm4 extends StatefulWidget {
  final String questionId;
  const ReponseForm4({
    Key? key,
    required this.questionId,
  }) : super(key: key);

  @override
  State<ReponseForm4> createState() => _ReponseForm4State();
}

class _ReponseForm4State extends State<ReponseForm4> {
  bool value = false;

  static final TextEditingController _reponse4Controller =
      TextEditingController();
  static final TextEditingController _versetRef4Controller =
      TextEditingController();
  static final TextEditingController _verset4Controller =
      TextEditingController();

  void addReponse() {
    final newReponse = Reponse(
      id: '',
      questionId: widget.questionId,
      texte: _reponse4Controller.text,
      confirme: value,
      versetRef: value ? _versetRef4Controller.text : null,
      verset: value ? _verset4Controller.text : null,
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
                  controller: _reponse4Controller,
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
              controller: _versetRef4Controller,
              decoration: const InputDecoration(
                labelText: 'Référence du verset',
              ),
            ),
          ),
          Visibility(
            visible: value,
            child: TextFormField(
              controller: _verset4Controller,
              decoration: const InputDecoration(
                labelText: 'Verset',
              ),
            ),
          ),
          const SizedBox(height: 45),
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
    _reponse4Controller.dispose();
    _verset4Controller.dispose();
    _versetRef4Controller.dispose();
    super.dispose();
  }
}

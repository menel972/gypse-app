import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/compte/compte.dart';
import 'package:bible_quiz/views/compte/question_ajout.dart';
import 'package:bible_quiz/views/compte/question_preview.dart';
import 'package:flutter/material.dart';


class MonCompteVue extends StatefulWidget {
  const MonCompteVue({Key? key}) : super(key: key);



  @override
  State<MonCompteVue> createState() => _MonCompteVueState();
}

class _MonCompteVueState extends State<MonCompteVue> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Column(
        children: [
          TabBar(
            tabs: [
              Text('Mon compte', style: MyTextStyle.titleS),
              Text('Questions', style: MyTextStyle.titleS),
              IgnorePointer(
                child: Text('Ajout', style: MyTextStyle.titleS),
              ),
            ],
            isScrollable: true,
          ),
          const SizedBox(height: 10),
          const Expanded(
            child: TabBarView(
              children: [
                Compte(),
                QuestionPreview(),
                QuestionAjout(),
              ],
            ),
          ),
        ],
      ),
    );
    
    
    
  }
}

import 'package:bible_quiz/views/jeu/widgets/question_vue.dart';
import 'package:flutter/material.dart';

class JeuVue extends StatefulWidget {
  static const route = './jeu';
  final String? livre;

  const JeuVue({Key? key, this.livre}) : super(key: key);

  @override
  State<JeuVue> createState() => _JeuVueState();
}

class _JeuVueState extends State<JeuVue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.pop(context),
          icon: const Icon(Icons.arrow_back_ios),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings),
            onPressed: () {},
          ),
        ],
      ),
      body: const QuestionVue(),
    );
  }
}

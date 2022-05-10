import 'package:bible_quiz/views/jeu/widgets/question_vue.dart';
import 'package:flutter/material.dart';

class JeuVue extends StatefulWidget {
  const JeuVue({Key? key}) : super(key: key);

  @override
  State<JeuVue> createState() => _JeuVueState();
}

class _JeuVueState extends State<JeuVue> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: const Icon(Icons.arrow_back_ios),
        actions: [
          IconButton(icon: const Icon(Icons.settings), onPressed: () {}),
        ],
      ),
      body: const QuestionVue(),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.bar_chart), label: 'Stats'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Compte'),
        ],
      ),
    );
  }
}

import 'package:bible_quiz/composants/dialogs/quit_dialog.dart';
import 'package:bible_quiz/composants/dialogs/settings_modal.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/jeu/widgets/question_vue.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

import '../../services/data.dart';
import '../../services/models/question_model.dart';

class JeuVue extends StatefulWidget {
  // =
  static const route = './jeu';
  final String? livre;

  const JeuVue({Key? key, this.livre}) : super(key: key);

  @override
  State<JeuVue> createState() => _JeuVueState();
}

// <> _JeuVueState()
class _JeuVueState extends State<JeuVue> {
  // {} Modal Quit
  Future confirmQuit(BuildContext context) async {
    countDownController.pause();
    return await showDialog(
        context: context,
        builder: (context) => QuitDialog(
              countDownController: countDownController
            ));
  }

  // {} CountDown Controller
  final CountDownController countDownController = CountDownController();

// = Questions
  List<Question> ques = Data.questions;

  int quesIndex = 0;

  void swicthIndex() {
    setState(() {
      quesIndex++;
    });
  }

  // <> Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // <> AppBar
      appBar: AppBar(
        elevation: 0,
        // <!> QuitDialog()
        leading: IconButton(
          onPressed: () => confirmQuit(context),
          icon: const Icon(Icons.home_outlined),
        ),
        title: Text(ques[quesIndex].livre, style: MyTextStyle.titleM),
        actions: [
          IconButton(
            icon: const Icon(Icons.settings_outlined),
            onPressed: () => {
              countDownController.pause(),
              SettingsModal.showSettings(
                context,
                countDownController,
              ),
            },
          ),
        ],
      ),

      // <> Body
      body: Container(
          padding: const EdgeInsets.only(top: 25),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/jeu_bkg.png'),
              fit: BoxFit.cover,
            ),
          ),
          // <!> QuetionVue()
          child: QuestionVue(
            ques: ques[quesIndex],
            countDownController: countDownController,
            swicthIndex: swicthIndex,
          )),
    );
  }
}

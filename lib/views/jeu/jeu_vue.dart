import 'package:bible_quiz/composants/dialogs/quit_dialog.dart';
import 'package:bible_quiz/composants/dialogs/settings_modal.dart';
import 'package:bible_quiz/services/crud/question_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/jeu/widgets/question_vue.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

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
        builder: (context) =>
            QuitDialog(countDownController: countDownController));
  }

  // {} CountDown Controller
  final CountDownController countDownController = CountDownController();

  // <> Build
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<Question>(
        stream: QuestionCrud.fetchFirstQuestionByUser([], widget.livre),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
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
                title: Text(
                  snapshot.data!.livre,
                  style: MyTextStyle.textM,
                ),

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
                  countDownController: countDownController,
                  livre: widget.livre!,
                ),
              ),
            );
          } else if (!snapshot.hasData) {
            return Scaffold(
              extendBodyBehindAppBar: true,
              // <> AppBar
              appBar: AppBar(
                elevation: 0,
                // <!> QuitDialog()
                leading: IconButton(
                  onPressed: () => Navigator.pop(context),
                  icon: const Icon(Icons.arrow_back_ios),
                ),
                title: Text(
                  widget.livre!,
                  style: MyTextStyle.textM,
                ),

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
                  countDownController: countDownController,
                  livre: widget.livre!,
                ),
              ),
            );
          } else if (snapshot.hasError) {
            // ignore: avoid_print
            print('stream error : ' + snapshot.error.toString());
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Couleur.secondary,
            ),
          );
        });
  }
}

import 'package:bible_quiz/composants/bottomBar/home_bottom_bar.dart';
import 'package:bible_quiz/composants/dialogs/settings_modal.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/home/widgets/accueil.dart';
import 'package:circular_countdown_timer/circular_countdown_timer.dart';
import 'package:flutter/material.dart';

class HomeVue extends StatefulWidget {
  // =
  static const route = './';

  const HomeVue({
    Key? key,
  }) : super(key: key);

  @override
  State<HomeVue> createState() => _HomeVueState();
}

// <> _HomeVueState()
class _HomeVueState extends State<HomeVue> {
  // {} BottomBar
  static int index = 0;

  void switchIndex(int i) => setState(() {
        index = i;
      });

  Widget switchWidget() {
    switch (index) {
      case 1:
        return Center(child: Text('Statistiques', style: MyTextStyle.titleM));
      case 2:
        return Center(child: Text('Mon Compte', style: MyTextStyle.titleM));
      default:
        return const Accueil();
    }
  }

  final CountDownController _controller = CountDownController();

// <> Build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,

      // <> AppBar
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => SettingsModal.showSettings(
              context,
              _controller,
            ),
            icon: const Icon(Icons.settings_outlined),
            splashRadius: 20,
            splashColor: Couleur.secondary.withOpacity(0.5),
          ),
        ],
      ),

      // <> Body
      body: Container(
        padding: const EdgeInsets.only(top: 120),
        decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/home_bkg.png'),
              fit: BoxFit.cover,
            ),
        ),
        // <!> Accueil()
          child: switchWidget()
      ),

      // <> BottomBar
      // <!> HomeBottomBar()
      bottomNavigationBar: HomeBottomBar(
        index: index,
        switchIndex: switchIndex,
      ),
    );
  }
}

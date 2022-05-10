import 'package:bible_quiz/composants/bottomBar/home_bottom_bar.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/home/widgets/accueil.dart';
import 'package:flutter/material.dart';

class HomeVue extends StatefulWidget {
  static const route = './';

  const HomeVue({Key? key}) : super(key: key);

  @override
  State<HomeVue> createState() => _HomeVueState();
}

class _HomeVueState extends State<HomeVue> {
  // {} BottomBar
  static int index = 0;

  void switchIndex(int i) => setState(() {
        index = i;
      });

  // {} Body
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: AppBar(
        actions: [
          // TODO : Navigation vers les settings
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.settings_outlined),
            splashRadius: 20,
            splashColor: Couleur.secondary.withOpacity(0.5),
          ),
        ],
      ),
      body: switchWidget(),
      bottomNavigationBar: HomeBottomBar(
        index: index,
        switchIndex: switchIndex,
      ),
    );
  }
}

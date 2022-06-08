import 'package:bible_quiz/composants/bottomBar/home_bottom_bar.dart';
import 'package:bible_quiz/composants/dialogs/settings_modal.dart';
import 'package:bible_quiz/services/BLoC/bloc_provider.dart';
import 'package:bible_quiz/services/BLoC/provided/bottom_index_bloc.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:bible_quiz/views/compte/mon_compte_vue.dart';
import 'package:bible_quiz/views/home/widgets/accueil.dart';
import 'package:bible_quiz/views/statistiques/stats_vue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/providers/user_provider.dart';

class HomeVue extends StatelessWidget {
  // =
  static const route = './';

  const HomeVue({
    Key? key,
  }) : super(key: key);


  Widget switchWidget(MyUser currentUser, int index) {
    switch (index) {
      case 1:
        return StatsVue(user: currentUser);
      case 2:
        return const MonCompteVue();
      default:
        return const Accueil();
    }
  }

// <> Build
  @override
  Widget build(BuildContext context) {
    // = Provider
    MyUser myUser = Provider.of<UserProvider>(context, listen: true).user;

    // = BLoC
    final _bloc = BlocProvider.of<BottomIndexBloc>(context);

    return StreamBuilder<int>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          int _index = snapshot.data!;
          return Scaffold(
            extendBodyBehindAppBar: true,
            extendBody: true,

            // <> AppBar
            appBar: AppBar(
              automaticallyImplyLeading: false,
              actions: [
                Padding(
                  padding: const EdgeInsets.only(right: 10),
                  child: IconButton(
                    onPressed: () =>
                        SettingsModal.showSettings(context, myUser.settings),
                    icon: const Icon(Icons.settings_outlined),
                    splashRadius: 20,
                    splashColor: Couleur.secondary.withOpacity(0.5),
                  ),
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
                child: switchWidget(myUser, _index)),

            // <> BottomBar
            // <!> HomeBottomBar()
            bottomNavigationBar: HomeBottomBar(
              index: _index,
              switchIndex: (value) => _bloc.setIndex(value),
            ),
          );
        });
  }
}

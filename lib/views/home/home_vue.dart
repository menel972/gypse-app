import 'package:bible_quiz/composants/bottomBar/home_bottom_bar.dart';
import 'package:bible_quiz/composants/dialogs/settings_modal.dart';
import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:bible_quiz/views/compte/mon_compte_vue.dart';
import 'package:bible_quiz/views/home/widgets/accueil.dart';
import 'package:bible_quiz/views/statistiques/stats_vue.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../services/providers/user_provider.dart';
import '../auth/auth_vue.dart';

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

  Widget switchWidget(MyUser currentUser) {
    switch (index) {
      case 1:
        return StatsVue(user: currentUser);
      case 2:
        return const MonCompteVue();
      default:
        return const Accueil();
    }
  }

// = Method User Id
  String getUserId(BuildContext context, String method) {
    switch (method) {
      case Method.mdp:
        return AuthCrud.userId();
      case Method.g:
        return AuthCrud.googleUser!.id;
      case Method.fb:
        return '';
      default:
        Navigator.pushNamed(context, AuthVue.route);
        return '';
    }
  }

// <> Build
  @override
  Widget build(BuildContext context) {
    // = Provider
    String method =
        Provider.of<UserProvider>(context, listen: true).userIdMethod;

    void setPrivateUser(MyUser dbUser) =>
        Provider.of<UserProvider>(context, listen: false).setUser(dbUser);

    return StreamBuilder<MyUser>(
        stream: UserCrud.getConnectedUser(getUserId(context, method)),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            setPrivateUser(snapshot.data!);
            return Scaffold(
              extendBodyBehindAppBar: true,
              extendBody: true,

              // <> AppBar
              appBar: AppBar(
                automaticallyImplyLeading: false,
                actions: [
                  IconButton(
                    onPressed: () => SettingsModal.showSettings(context),
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
                  child: switchWidget(snapshot.data!)),

              // <> BottomBar
              // <!> HomeBottomBar()
              bottomNavigationBar: HomeBottomBar(
                index: index,
                switchIndex: switchIndex,
              ),
            );
          } else if (!snapshot.hasData) {
            return Center(child: Text(snapshot.error.toString()));
          } else if (snapshot.hasError) {
            // ignore: avoid_print
            print('get connected User error : ' + snapshot.error.toString());
          }
          return const Center(
            child: CircularProgressIndicator(
              color: Couleur.secondary,
            ),
          );
        });
  }
}

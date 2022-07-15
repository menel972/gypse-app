// ignore_for_file: avoid_print

import 'package:bible_quiz/services/crud/auth_crud.dart';
import 'package:bible_quiz/services/crud/user_crud.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/providers/user_provider.dart';
import 'package:bible_quiz/styles/my_appbar_style.dart';
import 'package:bible_quiz/styles/my_bottom_bar_style.dart';
import 'package:bible_quiz/styles/my_input_style.dart';
import 'package:bible_quiz/views/auth/auth_vue.dart';
import 'package:bible_quiz/views/home/home_vue.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:bible_quiz/views/livres/livres_vue.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import 'composants/splashscreen/splash_screen.dart';
import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const Gypse());
}

class Gypse extends StatefulWidget {
  const Gypse({Key? key}) : super(key: key);

  @override
  State<Gypse> createState() => _GypseState();
}

class _GypseState extends State<Gypse> with WidgetsBindingObserver {
  final String version = '0.5.1';

  @override
  void initState() {
    WidgetsBinding.instance!.addObserver(this);
    super.initState();
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    if (!AuthCrud.isConnected()) return;
    if (state == AppLifecycleState.inactive) {
      UserCrud.updateConnectedState(AuthCrud.currentUser.uid, false);
    }
    if (state == AppLifecycleState.resumed) {
      UserCrud.updateConnectedState(AuthCrud.currentUser.uid, true);
    }
  }

  // <> Build
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: UserProvider()),
      ],
      child: MaterialApp(
        localizationsDelegates: AppLocalizations.localizationsDelegates,
        supportedLocales: AppLocalizations.supportedLocales,
        title: 'Gypse',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Couleur.primary,
          appBarTheme: MyAppbarStyle.appbarStyle,
          bottomNavigationBarTheme: MyBottomBarStyle.bottomStyle,
          inputDecorationTheme: MyInputStyle.inputStyle,
        ),

        // home: const GoogleTest(),
        home: Splashscreen(version: version),
        // home: const Envoi(),

        // <> Routes
        onGenerateRoute: (settings) {
          switch (settings.name) {
            case HomeVue.route:
              return MaterialPageRoute(
                builder: (context) => const HomeVue(),
              );
            case JeuVue.route:
              final String livre = settings.arguments as String;
              return MaterialPageRoute(
                builder: (context) => JeuVue(livre: livre),
              );
            case LivresVue.route:
              return MaterialPageRoute(
                builder: (context) => const LivresVue(),
              );
            case AuthVue.route:
              return MaterialPageRoute(
                builder: (context) => const AuthVue(),
              );
            case Splashscreen.route:
              return MaterialPageRoute(
                builder: (context) => Splashscreen(version: version),
              );
          }
          return null;
        },
      ),
    );
  }

  @override
  void dispose() {
    WidgetsBinding.instance!.removeObserver(this);
    super.dispose();
  }
}

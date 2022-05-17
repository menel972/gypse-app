import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/providers/settings_provider.dart';
import 'package:bible_quiz/styles/my_appbar_style.dart';
import 'package:bible_quiz/styles/my_bottom_bar_style.dart';
import 'package:bible_quiz/views/home/home_vue.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:bible_quiz/views/livres/livres_vue.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(value: SettingsProvider()),
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.orange,
          scaffoldBackgroundColor: Couleur.primary,
          appBarTheme: MyAppbarStyle.appbarStyle,
          bottomNavigationBarTheme: MyBottomBarStyle.bottomStyle,
        ),

        home: const HomeVue(),
    
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
          }
          return null;
        },
      ),
    );
  }
}

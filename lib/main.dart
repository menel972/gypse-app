import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/styles/my_appbar_style.dart';
import 'package:bible_quiz/styles/my_bottom_bar_style.dart';
import 'package:bible_quiz/views/home/home_vue.dart';
import 'package:bible_quiz/views/jeu/jeu_vue.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
        scaffoldBackgroundColor: Couleur.primary,
        appBarTheme: MyAppbarStyle.appbarStyle,
        bottomNavigationBarTheme: MyBottomBarStyle.bottomStyle,
      ),
      
      home: const HomeVue(),

      onGenerateRoute: (settings) {
        switch (settings.name) {
          case JeuVue.route:
            final String livre = settings.arguments as String;
            return MaterialPageRoute(
              builder: (context) => JeuVue(livre: livre),
            );
        }
        return null;
      },
    );
  }
}

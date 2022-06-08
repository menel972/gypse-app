import 'package:bible_quiz/services/BLoC/bloc_provider.dart';
import 'package:bible_quiz/services/BLoC/provided/bottom_index_bloc.dart';
import 'package:bible_quiz/views/home/home_vue.dart';
import 'package:flutter/material.dart';

class BlocRouter {
  // <> Routes
  MaterialPageRoute homeRoute() =>
      MaterialPageRoute(builder: (context) => home());

  // <!> Provider
  BlocProvider home() => BlocProvider<BottomIndexBloc>(
      bloc: BottomIndexBloc(), child: const HomeVue());
}

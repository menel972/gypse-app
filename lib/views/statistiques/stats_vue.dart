import 'package:bible_quiz/services/models/user_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

class StatsVue extends StatelessWidget {
  final MyUser user;
  const StatsVue({
    Key? key,
    required this.user,
  }) : super(key: key);

  List<dynamic> get uQs => user.questions;
  int get nbGood => uQs.where((q) => q.valid).length;
  int get nbBad => uQs.where((q) => !q.valid).length;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(
            'Bonnes réponses : ' +
                nbGood.toString() +
                '/' +
                uQs.length.toString(),
            style: MyTextStyle.textM,
          ),
          Text(
            'Mauvaises réponses : ' +
                nbBad.toString() +
                '/' +
                uQs.length.toString(),
            style: MyTextStyle.textM,
          ),
        ],
      ),
    );
  }
}

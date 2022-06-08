import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

class NoData extends StatelessWidget {
  final String texte;
  const NoData({
    Key? key,
    required this.texte,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        texte,
        style: MyTextStyle.textM,
      ),
    );
  }
}

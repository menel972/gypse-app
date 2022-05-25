import 'package:bible_quiz/services/models/user_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/statistiques/widgets/stats_gauge.dart';
import 'package:bible_quiz/views/statistiques/widgets/stats_line.dart';
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

// = data Niveau 1
  int get nbRniv1 =>
      uQs.where((q) => q.valid).where((q) => q.niveau == 1).length;
  int get nbPniv1 =>
      uQs.where((q) => !q.valid).where((q) => q.niveau == 1).length;
  int get resteNiv1 => uQs.length - (nbRniv1 + nbPniv1);

  List<Map<String, dynamic>> get dataNiv1 => [
        {'domain': 'R', 'measure': nbRniv1},
        {'domain': 'P', 'measure': nbPniv1},
        {'domain': 'T', 'measure': resteNiv1},
      ];

// = data Niveau 2
  int get nbRniv2 =>
      uQs.where((q) => q.valid).where((q) => q.niveau == 2).length;
  int get nbPniv2 =>
      uQs.where((q) => !q.valid).where((q) => q.niveau == 2).length;
  int get resteNiv2 => uQs.length - (nbRniv2 + nbPniv2);

  List<Map<String, dynamic>> get dataNiv2 => [
        {'domain': 'R', 'measure': nbRniv2},
        {'domain': 'P', 'measure': nbPniv2},
        {'domain': 'T', 'measure': resteNiv2},
      ];

// = data Niveau 3
  int get nbRniv3 =>
      uQs.where((q) => q.valid).where((q) => q.niveau == 3).length;
  int get nbPniv3 =>
      uQs.where((q) => !q.valid).where((q) => q.niveau == 3).length;
  int get resteNiv3 => uQs.length - (nbRniv3 + nbPniv3);

  List<Map<String, dynamic>> get dataNiv3 => [
        {'domain': 'R', 'measure': nbRniv3},
        {'domain': 'P', 'measure': nbPniv3},
        {'domain': 'T', 'measure': resteNiv3},
      ];

// = data globale

  List<Map<String, dynamic>> get evo {
    List<Map<String, dynamic>> data = [];
    int i = 0;
    for (var q in uQs) {
      q.valid ? i++ : i--;
      data.add({'domain': uQs.indexOf(q), 'measure': i});
    }

    return data;
  }

  List<Map<String, dynamic>> get dataGlobale => [
        {
          'id': 'Line',
          'data': evo,
        }
      ];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              uQs.length.toString() + ' questions répondue.s :',
              style: MyTextStyle.titleS,
            ),
            const SizedBox(height: 15),
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.55,
              child: Row(
                children: [
                  Expanded(
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        // <!> Niv3()
                        StatsGauge(
                          data: dataNiv3,
                          legende: 'Difficile',
                          nbR: nbRniv3,
                          nbP: nbPniv3,
                        ),
                        const SizedBox(width: 15),
                        // <!> Niv2()
                        StatsGauge(
                          data: dataNiv2,
                          legende: 'Moyen',
                          nbR: nbRniv2,
                          nbP: nbPniv2,
                        ),
                        const SizedBox(width: 15),
                        // <!> Niv1()
                        StatsGauge(
                          data: dataNiv1,
                          legende: 'Facile',
                          nbR: nbRniv1,
                          nbP: nbPniv1,
                        ),
                        const SizedBox(width: 15),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // <!> Globale()
            Expanded(
              child: StatsLine(
                data: dataGlobale,
                legende: 'Evolution des résultats',
              ),
            ),
          ],
        ),
      ),
    );
  }
}

import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/user_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:d_chart/d_chart.dart';
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
              'Mon activité',
              style: MyTextStyle.textM,
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
                        Container(
                          height: MediaQuery.of(context).size.width * 0.55,
                          width: MediaQuery.of(context).size.width * 0.55,
                          color: Couleur.blanc2.withOpacity(0.3),
                          child: Stack(
                            children: [
                              DChartGauge(
                                data: dataNiv3,
                                fillColor: (pieData, i) {
                                  switch (pieData['domain']) {
                                    case 'R':
                                      return Couleur.secondary;
                                    case 'P':
                                      return Colors.red;
                                    default:
                                      return Colors.grey;
                                  }
                                },
                                // pieLabel: (pieData, index) {
                                //   return "${pieData['domain']}";
                                // },
                              ),
                              const Align(
                                child: Text('Difficile'),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Réussie : ' + nbRniv3.toString(),
                                        style: const TextStyle(
                                          color: Couleur.secondary,
                                        ),
                                      ),
                                      Text(
                                        'Perdue : ' + nbPniv3.toString(),
                                        style: const TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        'Total : ' + uQs.length.toString(),
                                        style: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        // <!> Niv2()
                        Container(
                          height: MediaQuery.of(context).size.width * 0.55,
                          width: MediaQuery.of(context).size.width * 0.55,
                          color: Couleur.blanc2.withOpacity(0.3),
                          child: Stack(
                            children: [
                              DChartGauge(
                                data: dataNiv2,
                                fillColor: (pieData, i) {
                                  switch (pieData['domain']) {
                                    case 'R':
                                      return Couleur.secondary;
                                    case 'P':
                                      return Colors.red;
                                    default:
                                      return Colors.grey;
                                  }
                                },
                                pieLabel: (pieData, index) {
                                  return "${pieData['domain']}";
                                },
                              ),
                              const Align(
                                child: Text('Moyen'),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Réussie : ' + nbRniv2.toString(),
                                        style: const TextStyle(
                                          color: Couleur.secondary,
                                        ),
                                      ),
                                      Text(
                                        'Perdue : ' + nbPniv2.toString(),
                                        style: const TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        'Total : ' + uQs.length.toString(),
                                        style: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(width: 15),
                        // <!> Niv1()
                        Container(
                          height: MediaQuery.of(context).size.width * 0.55,
                          width: MediaQuery.of(context).size.width * 0.55,
                          color: Couleur.blanc2.withOpacity(0.3),
                          child: Stack(
                            children: [
                              DChartGauge(
                                data: dataNiv1,
                                fillColor: (pieData, i) {
                                  switch (pieData['domain']) {
                                    case 'R':
                                      return Couleur.secondary;
                                    case 'P':
                                      return Colors.red;
                                    default:
                                      return Colors.grey;
                                  }
                                },
                                pieLabel: (pieData, index) {
                                  return "${pieData['domain']}";
                                },
                              ),
                              const Align(
                                child: Text('Facile'),
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 5, horizontal: 0),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        'Réussie : ' + nbRniv1.toString(),
                                        style: const TextStyle(
                                          color: Couleur.secondary,
                                        ),
                                      ),
                                      Text(
                                        'Perdue : ' + nbPniv1.toString(),
                                        style: const TextStyle(
                                          color: Colors.red,
                                        ),
                                      ),
                                      Text(
                                        'Total : ' + uQs.length.toString(),
                                        style: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
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
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(vertical: 80, horizontal: 15),
                child: DChartLine(
                  data: dataGlobale,
                  lineColor: (lineData, i, id) => Couleur.secondary,
                  pointColor: (lineData, i, id) {
                    return evo[i!]['measure'] >= 0
                        ? Couleur.primary
                        : Colors.red;
                  },
                  includeArea: true,
                  includePoints: true,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

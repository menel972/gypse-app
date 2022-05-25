import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../../../services/enums/couleur.dart';

class StatsGauge extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final String legende;
  final int nbR;
  final int nbP;
  const StatsGauge({
    Key? key,
    required this.data,
    required this.legende,
    required this.nbR,
    required this.nbP,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.width * 0.55,
      width: MediaQuery.of(context).size.width * 0.55,
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors: [
            Couleur.primary.withOpacity(0.9),
            Couleur.blanc.withOpacity(0.4),
          ],
          begin: Alignment.bottomCenter,
          end: Alignment.topCenter,
        ),
      ),
      child: Stack(
        children: [
          DChartGauge(
            data: data,
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
            labelColor: Couleur.blanc,
            strokeWidth: 0,
            donutWidth: 35,
          ),
          Align(
            child: Text(
              legende,
              style: MyTextStyle.textS,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    'Réussie : ' + nbR.toString(),
                    style: MyTextStyle.labelOrangeS,
                  ),
                  Text(
                    'Perdue : ' + nbP.toString(),
                    style: MyTextStyle.labelRougeS,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

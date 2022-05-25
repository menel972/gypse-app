import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:d_chart/d_chart.dart';
import 'package:flutter/material.dart';

import '../../../services/enums/couleur.dart';

class StatsLine extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final String legende;
  const StatsLine({
    Key? key,
    required this.data,
    required this.legende,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 80, top: 35, left: 15, right: 15),
      child: Column(
        children: [
          Text(legende, style: MyTextStyle.textM),
          Expanded(
            child: DChartLine(
              data: data,
              lineColor: (lineData, i, id) => Couleur.secondary,
              pointColor: (lineData, i, id) {
                return lineData['measure'] >= 0 ? Couleur.primary : Colors.red;
              },
              includeArea: true,
              includePoints: true,
            ),
          ),
        ],
      ),
    );
  }
}

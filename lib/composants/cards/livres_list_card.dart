import 'package:flutter/material.dart';

import '../../services/enums/couleur.dart';
import '../../styles/my_text_style.dart';

class LivresListCard extends StatelessWidget {
  // =
  final String livre;
  final int nbQ;
  final int nbR;
  final VoidCallback function;
  const LivresListCard({
    Key? key,
    required this.livre,
    required this.nbQ,
    required this.nbR,
    required this.function,
  }) : super(key: key);

  // <> Build
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      // <!> JeuVue()
      onTap: nbQ != 0 ? function : () {},
      child: Stack(children: [
        Container(
          alignment: Alignment.center,
          decoration: BoxDecoration(
            boxShadow: nbQ != 0
                ? const [
                    BoxShadow(
                      color: Colors.black,
                      offset: Offset(2, 1),
                      blurRadius: 4,
                    ),
                    BoxShadow(
                      color: Couleur.primary,
                      offset: Offset(3, 2),
                      blurRadius: 10,
                    ),
                  ]
                : [],
            borderRadius: BorderRadius.circular(20),
            gradient: const SweepGradient(
              colors: [
                Couleur.blanc2,
                Couleur.bleu,
                Couleur.violet,
                Couleur.orange,
              ],
              stops: [
                0,
                0.39,
                0.6,
                0.9,
              ],
              center: Alignment(1, 0.2),
              startAngle: -0.8,
              endAngle: 6.5,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 8.0, vertical: 10),
                child: FittedBox(
                    child:
                        Text(livre.toUpperCase(), style: MyTextStyle.titleM)),
              ),
              Text.rich(TextSpan(
                text: nbR.toString(),
                style: nbR > 0 ? MyTextStyle.textOrangeS : MyTextStyle.textS,
                children: [
                  TextSpan(
                    text: ' / ' + nbQ.toString(),
                    style: MyTextStyle.textS,
                  ),
                ],
              ))
            ],
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(nbQ != 0 ? 0 : 0.3),
            borderRadius: BorderRadius.circular(20),
          ),
        )
      ]),
    );
  }
}

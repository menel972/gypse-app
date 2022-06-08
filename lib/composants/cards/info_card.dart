import 'package:auto_size_text/auto_size_text.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:flutter/material.dart';

import '../../services/enums/couleur.dart';

class InfoCard extends StatelessWidget {
  final IconData icon;
  final String label;
  final String data;
  const InfoCard({
    Key? key,
    required this.icon,
    required this.data,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          color: Couleur.bleuClair.withOpacity(0.1),
          elevation: 0,
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 15.0, horizontal: 8),
            decoration: BoxDecoration(
              border: Border.all(
                width: 2,
                color: Couleur.primAccent,
              ),
              borderRadius: BorderRadius.circular(5),
            ),
            width: double.infinity,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const SizedBox(width: 15),
                Flexible(
                  flex: 6,
                  child: AutoSizeText(
                    data,
                    style: MyTextStyle.labelM,
                    minFontSize: 16,
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
                Flexible(
                  flex: 1,
                  child: Icon(
                    icon,
                    color: Couleur.blanc,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          top: -4,
          left: 15,
          child: Text(
            label,
            style: MyTextStyle.labelS,
          ),
        ),
      ],
    );
  }
}

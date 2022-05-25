import 'package:auto_size_text/auto_size_text.dart';
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
    return Card(
      elevation: 0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12.0, horizontal: 8),
        decoration: BoxDecoration(
          color: Couleur.orangeClair,
          border: Border.all(
            width: 2,
            color: Couleur.orangeBorder,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        width: double.infinity,
        child: Row(
          // mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 1,
              child: Icon(icon),
            ),
            const SizedBox(width: 7),
            Flexible(
              flex: 5,
              child: Text(label),
            ),
            const SizedBox(width: 15),
            Flexible(
              flex: 6,
              child: AutoSizeText(
                data,
                minFontSize: 16,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

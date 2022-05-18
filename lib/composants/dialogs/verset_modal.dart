import 'package:auto_size_text/auto_size_text.dart';
import 'package:bible_quiz/services/enums/couleur.dart';
import 'package:bible_quiz/services/models/reponse_model.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:blur/blur.dart';
import 'package:flutter/material.dart';

class VersetModal extends StatefulWidget {
  // =
  final Reponse rep;
  // {} show verset modal
  static Future showVerset(BuildContext context, Reponse rep) async {
    await showModalBottomSheet(
      context: context,
      backgroundColor: Couleur.bleuClair.withOpacity(0.5),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      builder: (context) => VersetModal(rep: rep),
    );
  }

  const VersetModal({
    Key? key,
    required this.rep,
  }) : super(key: key);

  @override
  State<VersetModal> createState() => _VersetModalState();
}

// <> _VersetModalState()
class _VersetModalState extends State<VersetModal> {
  // <> Build
  @override
  Widget build(BuildContext context) {
    return Blur(
      blur: 3,
      blurColor: Couleur.bleuClair,
      borderRadius: const BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
      child: Container(
        padding: const EdgeInsets.all(15),
      ),
      overlay: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            AutoSizeText(
              widget.rep.texte,
              style: MyTextStyle.textBleuM,
              textAlign: TextAlign.justify,
              maxLines: 15,
            ),
            const SizedBox(height: 30),
            AutoSizeText(
              widget.rep.verset!,
              style: MyTextStyle.textBleuM,
              textAlign: TextAlign.justify,
              maxLines: 15,
            ),
            const SizedBox(height: 20),
            Text(widget.rep.versetRef!, style: MyTextStyle.textBleuM),
          ],
        ),
      ),
    );
  }
}

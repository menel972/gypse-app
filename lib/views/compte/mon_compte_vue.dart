import 'package:bible_quiz/services/providers/user_provider.dart';
import 'package:bible_quiz/styles/my_text_style.dart';
import 'package:bible_quiz/views/compte/compte.dart';
import 'package:bible_quiz/views/compte/question_ajout.dart';
import 'package:bible_quiz/views/compte/question_preview.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';


class MonCompteVue extends StatefulWidget {
  const MonCompteVue({Key? key}) : super(key: key);



  @override
  State<MonCompteVue> createState() => _MonCompteVueState();
}

class _MonCompteVueState extends State<MonCompteVue> {
  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;

    // = Provider
    final _myUser = Provider.of<UserProvider>(context).user;
    
    return DefaultTabController(
      length: _myUser.isAdmin ? 3 : 1,
      child: Column(
        children: [
          TabBar(
            tabs: _myUser.isAdmin
                ? [
                    Text(_trad.redir_profile, style: MyTextStyle.titleS),
                    Text(_trad.title_ques, style: MyTextStyle.titleS),
                    Text(_trad.title_add_que, style: MyTextStyle.titleS),
                  ]
                : [
                    Text(_trad.redir_profile, style: MyTextStyle.titleS),
                  ],
            isScrollable: true,
          ),
          const SizedBox(height: 10),
          Expanded(
            child: TabBarView(
              children: _myUser.isAdmin
                  ? [
                      const Compte(),
                      const QuestionPreview(),
                      const QuestionAjout(),
                    ]
                  : [
                      const Compte(),
                    ],
            ),
          ),
        ],
      ),
    );
    
    
    
  }
}

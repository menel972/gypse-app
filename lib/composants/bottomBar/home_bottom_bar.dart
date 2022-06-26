import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class HomeBottomBar extends StatelessWidget {
  // =
  final int index;
  final Function(int) switchIndex;

  const HomeBottomBar({
    Key? key,
    required this.index,
    required this.switchIndex,
  }) : super(key: key);

// <> Build
  @override
  Widget build(BuildContext context) {
    final _trad = AppLocalizations.of(context)!;

    return BottomNavigationBar(
      currentIndex: index,
      onTap: (int i) => switchIndex(i),
      items: [
        BottomNavigationBarItem(
            icon: const Icon(Icons.home_outlined), label: _trad.redir_acc),
        BottomNavigationBarItem(
            icon: const Icon(Icons.bar_chart_outlined),
            label: _trad.redir_stat),
        BottomNavigationBarItem(
            icon: const Icon(Icons.person_outline), label: _trad.redir_profile),
      ],
    );
  }
}

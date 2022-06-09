import 'package:bible_quiz/services/BLoC/bloc_provider.dart';
import 'package:bible_quiz/services/BLoC/provided/boolean_bloc.dart';
import 'package:bible_quiz/views/auth/widgets/sign_in.dart';
import 'package:bible_quiz/views/auth/widgets/sign_up.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AuthVue extends StatelessWidget {
  static const String route = './auth';
  const AuthVue({Key? key}) : super(key: key);

  Widget switchSign(bool hasAccount, VoidCallback function) {
    switch (hasAccount) {
      case true:
        return BlocProvider<BooleanBloc>(
            bloc: BooleanBloc(), child: SignIn(setHasAccount: function));
      default:
        return BlocProvider<BooleanBloc>(
            bloc: BooleanBloc(), child: SignUp(setHasAccount: function));
    }
  }

  @override
  Widget build(BuildContext context) {
    Size _size = Size(
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height,
    );
    // = BLoC
    final _bloc = BlocProvider.of<BooleanBloc>(context);

    return StreamBuilder<bool>(
        stream: _bloc.stream,
        builder: (context, snapshot) {
          bool _hasAccount = snapshot.data!;
          return Scaffold(
            body: Container(
              alignment: Alignment.center,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/home_bkg.png'),
                  fit: BoxFit.cover,
                ),
              ),
              child: ListView(
                children: [
                  SvgPicture.asset(
                    'assets/images/splashicon_gypse.svg',
                    height: _size.height * 0.28,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: _size.width * 0.1,
                        vertical: _size.height * 0.06),
                    child: switchSign(_hasAccount, _bloc.switchBoolean),
                  ),
                ],
              ),
            ),
          );
        });
  }
}

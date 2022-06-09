// ignore_for_file: avoid_print

import 'package:flutter/material.dart';

class ErrorStream extends StatelessWidget {
  final String message;
  final AsyncSnapshot flux;
  const ErrorStream({
    Key? key,
    required this.message,
    required this.flux,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('$message error : ${flux.error}');
    return const Center(
      child: CircularProgressIndicator(
        color: Colors.red,
      ),
    );
  }
}

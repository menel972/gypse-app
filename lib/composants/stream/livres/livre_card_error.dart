import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class LivreCardError extends StatelessWidget {
  const LivreCardError({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size _size = Size(
      MediaQuery.of(context).size.width,
      MediaQuery.of(context).size.height,
    );

    return Shimmer.fromColors(
      baseColor: Colors.black87,
      highlightColor: Colors.black38,
      child: SizedBox(
        height: _size.width * 0.4,
        width: _size.width * 0.4,
      ),
    );
  }
}

import 'package:flutter/cupertino.dart';

class MySize {
  Size size(BuildContext context) => Size(
        MediaQuery.of(context).size.width,
        MediaQuery.of(context).size.height,
      );
}

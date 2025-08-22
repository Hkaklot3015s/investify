import 'package:flutter/material.dart';

class AppLogo extends StatelessWidget {
  final double? width;
  const AppLogo({super.key,this.width = 100});

  @override
  Widget build(BuildContext context) {
    return Image.asset("assets/img/playstore.png", width: width);
  }
}

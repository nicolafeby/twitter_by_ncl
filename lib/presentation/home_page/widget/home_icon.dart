import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class HomeIcon extends StatelessWidget {
  const HomeIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Lottie.asset(
      'assets/lotties/twitter_icon.json',
    );
  }
}

import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Image.asset(AssetsData.logo),
        const SizedBox(height: 10),
        const Text(kSplashText, textAlign: TextAlign.center),
      ],
    );
  }
}

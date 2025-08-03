import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Center(child: Image.asset(kLogoImage, width: 250)),
        SizedBox(height: 10),
        Text(
          kSplashText,
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.grey.shade400,
            fontSize: 15,
            fontFamily: kPrimaryFont,
          ),
        ),
      ],
    );
  }
}

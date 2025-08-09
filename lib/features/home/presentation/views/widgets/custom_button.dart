import 'package:bookly/core/utils/styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    this.onPressed,
    required this.text,
    required this.radiusBL,
    required this.bgColor,
    required this.textColor,
    required this.radiusBR,
    required this.radiusTL,
    required this.radiusTR,
    this.fontSize,
  });

  final String text;
  final Color bgColor;
  final double radiusBL;
  final double radiusBR;
  final double radiusTL;
  final double radiusTR;
  final Color textColor;
  final double? fontSize;
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: TextButton(
        onPressed: onPressed,
        style: TextButton.styleFrom(
          backgroundColor: bgColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(radiusBL),
              bottomRight: Radius.circular(radiusBR),
              topLeft: Radius.circular(radiusTL),
              topRight: Radius.circular(radiusTR),
            ),
          ),
        ),
        child: Padding(
          padding: text == 'Free Perview'
              ? EdgeInsets.only(top: 5)
              : EdgeInsets.only(top: 0),
          child: Text(
            text,
            style: Styles.textStyle25.copyWith(
              color: textColor,
              fontSize: fontSize,
            ),
          ),
        ),
      ),
    );
  }
}

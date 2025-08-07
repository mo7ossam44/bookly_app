import 'package:flutter/material.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_button.dart';

class BooksAction extends StatelessWidget {
  const BooksAction({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: CustomButton(
            text: '19.99E',
            radiusBL: 20,
            radiusTL: 20,
            radiusBR: 0,
            radiusTR: 0,
            bgColor: Colors.white,
            textColor: Colors.black,
            onPressed: () {},
          ),
        ),
        Expanded(
          child: CustomButton(
            text: 'Free Perview',
            radiusBL: 0,
            radiusTL: 0,
            radiusBR: 20,
            radiusTR: 20,
            bgColor: Color(0xffEF8262),
            textColor: Colors.white,
            onPressed: () {},
            fontSize: 20,
          ),
        ),
      ],
    );
  }
}

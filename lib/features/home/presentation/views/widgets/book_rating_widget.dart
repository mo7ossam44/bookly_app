import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.only(bottom: 8),
          child: Icon(Icons.star, color: Color(0xffFFDD4F), size: 18),
        ),
        Text(' 4.8', style: Styles.textStyle20.copyWith(color: Colors.white)),
        Opacity(
          opacity: 0.5,
          child: Text(
            ' (2390)',
            style: Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
          ),
        ),
      ],
    );
  }
}

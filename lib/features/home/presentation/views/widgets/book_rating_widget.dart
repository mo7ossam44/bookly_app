import 'package:flutter/material.dart';
import 'package:bookly/core/utils/styles.dart';

class BookRating extends StatelessWidget {
  const BookRating({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('19.99 L.E', style: Styles.textStyle20),
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(bottom: 10),
              child: Icon(Icons.star, color: Color(0xffFFDD4F)),
            ),
            Text(
              ' 4.8(2390)',
              style: Styles.textStyle20.copyWith(color: Colors.grey.shade500),
            ),
          ],
        ),
      ],
    );
  }
}

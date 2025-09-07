import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:flutter/material.dart';

class BookDetailsSection extends StatelessWidget {
  const BookDetailsSection({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Column(
      children: [
        Container(
          height: height * 0.32,
          decoration: BoxDecoration(
            image: DecorationImage(image: AssetImage(AssetsData.bookPhoto)),
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'The Jungle Book',
          textAlign: TextAlign.center,
          style: Styles.textStyle30.copyWith(
            fontFamily: kPrimaryFont,
            wordSpacing: 3,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          'Rudyard Kipling',
          textAlign: TextAlign.center,
          style: Styles.textStyle20.copyWith(
            color: Colors.grey.shade500,
            letterSpacing: 3,
          ),
        ),
        const SizedBox(height: 20),
        const BookRating(),
        const SizedBox(height: 20),
        const BooksAction(),
      ],
    );
  }
}

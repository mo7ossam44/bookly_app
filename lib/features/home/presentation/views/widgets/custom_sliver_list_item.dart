import 'package:bookly/constants.dart';
import 'package:bookly/core/utils/app_router.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:go_router/go_router.dart';

class CustomSliverListItem extends StatelessWidget {
  const CustomSliverListItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => GoRouter.of(context).push(AppRouter.kBookView),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10),
        width: MediaQuery.of(context).size.width,
        height: 160,
        child: Row(
          children: [
            Image.asset(AssetsData.bookPhoto),
            const SizedBox(width: 30),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: MediaQuery.of(context).size.width * 0.5,
                    child: Text(
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      'Harry Potter and the Globlet of Fire',
                      style: Styles.textStyle20.copyWith(
                        fontFamily: kPrimaryFont,
                      ),
                    ),
                  ),
                  Text(
                    'J.K. Rowling',
                    style: Styles.textStyle20.copyWith(
                      color: Colors.grey.shade500,
                    ),
                  ),
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text('19.99 L.E', style: Styles.textStyle20),
                      BookRating(),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

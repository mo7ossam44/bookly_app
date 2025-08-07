import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';
import 'package:bookly/core/utils/assets.dart';
import 'package:bookly/core/utils/styles.dart';
import 'package:bookly/core/utils/widgets/sliver_hight.dart';
import 'package:bookly/features/home/presentation/views/widgets/books_action.dart';
import 'package:bookly/features/home/presentation/views/widgets/book_rating_widget.dart';
import 'package:bookly/features/home/presentation/views/widgets/similar_books_list_view.dart';
import 'package:bookly/features/home/presentation/views/widgets/custom_book_view_app_bar.dart';

class BookDetailesViewBody extends StatelessWidget {
  const BookDetailesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: CustomScrollView(
        slivers: [
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                CustomBookViewAppBar(),
                const SizedBox(height: 20),
                Container(
                  height: height * 0.32,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(AssetsData.bookPhoto),
                    ),
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
                Expanded(child: const SizedBox(height: 25)),
                Text(
                  'You can also like',
                  textAlign: TextAlign.start,
                  style: Styles.textStyle20.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 20),
                SimilarBooksListViewHorizontaly(),
                const SizedBox(height: 100),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
